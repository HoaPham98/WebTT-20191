var LocalStrategy = require('passport-local').Strategy;
const { User } = require('../app/models/user')
const bcrypt = require('bcrypt')

var fs = require('fs');
var find = require('lodash.find');

module.exports = function (passport) {
    passport.serializeUser(function (user, done) {
        //console.log('abc' + user[0].id)
        done(null, user.id);
    });

    passport.deserializeUser(async function (id, done) {
        //console.log('abcxyz' + id)
        try {
            const user = await User.query().findById(id)
            done(null, user)
        } catch (err) {
            console.log(err);
        }
    });

    passport.use('local.login', new LocalStrategy({
        usernameField: 'email',    // define the parameter in req.body that passport can use as username and password
        passwordField: 'password',
        passReqToCallback: true
    },
        async function (req, email, password, done) {
            try {
                const user = await User.query().findOne({
                    'email': email
                })

                if (!user) {
                    console.log('User Not Found with email ' + email);
                    return done(null, false,
                        req.flash('loginMessage', 'Invalid email or password'));
                } else {
                    // Object.keys(users).map(i => peopleObj[i])
                    if (!bcrypt.compareSync(password, user.password)) {
                        return done(null, false, req.flash('loginMessage', 'Invalid email or password'));
                    } else {
                        return done(null, user);
                    }
                }
            } catch (err) {
                return done(err);
            }
        }));

    passport.use('local.register', new LocalStrategy({
        usernameField: 'email',
        passswordField: 'password',
        passReqToCallback: true
    },
    async function (req, email, password, done) {
        try {
            const user = await User.query().findOne({
                'email': email
            })

            if (err) {
                return done(err)
            }
            if (user) {
                console.log('email đã tồn tại')
                return done(null, false, {
                    message: 'Email đã được sử dụng, vui lòng chọn email khác'
                })
            }

            const password = bcrypt.hashSync(req.body.password, 8)
		    const newUser = await User.query().insertAndFetch({
                name: req.body.name,
                email: req.body.email,
                password: password,
                phone: req.body.phone,
                isAdmin: false
            })

            return done(null, newUser)

        } catch (err) {
            return done(err)
        }
    }));
}
