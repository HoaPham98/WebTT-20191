var LocalStrategy = require('passport-local').Strategy;
const { User } = require('../app/models/users');
const bcrypt = require('bcrypt')
var fs = require('fs');
var find = require('lodash.find');

module.exports = function (passport) {
    passport.serializeUser(function (user, done) {
        //console.log('abc' + user[0].id)
        done(null, user[0].id);
    });
    
    passport.deserializeUser(async function (id, done) {
        //console.log('abcxyz' + id)
        try {
            var user = await User.query().where('id', id);
            done(null, user);
        } catch (err) {
            console.log(err);
        }
    });
    
    passport.use('login', new LocalStrategy({ passReqToCallback: true },
        async function (req, username, password, done) {
            try {
                var user = await User.query().where('name', username);
                // console.log(user)
                if (user.length == 0) {
                    console.log(user.length)
                    console.log('User Not Found with username ' + username);
                    return done(null, false,
                        req.flash('loginMessage', 'User Not found.'));
                } else {
                    // Object.keys(users).map(i => peopleObj[i])
                    var checkPassword = bcrypt.compareSync(password, user[0].password);
                    console.log(checkPassword)
                    var checkAdmin = user[0].isAdmin;
                    if (checkPassword && checkAdmin) {
                        return done(null, user);
                        
                    }else{
                        console.log('Invalid Password');
                        return done(null, false,
                            req.flash('loginMessage', 'Invalid Password'));
    
                    }
                }
                
    
            } catch (err) {
                return done(err);
            }
        }));
}
