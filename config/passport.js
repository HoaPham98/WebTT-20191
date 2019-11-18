var LocalStrategy = require('passport-local').Strategy;

var fs = require('fs');
var find = require('lodash.find');

module.exports = function (passport) {
    passport.serializeUser(function (user, done) {
        done(null, user.id);
    });
    
    passport.deserializeUser(async function (id, done) {
        try {
            var data = JSON.parse(fs.readFileSync(__dirname + '/admin.txt', 'utf8'));
            var user = await find(data, { id: id });
            done(null, user);
        } catch (err) {
            console.log(err);
        }
    });
    
    passport.use('login', new LocalStrategy({ passReqToCallback: true },
        async function (req, username, password, done) {
            try {
                var data = JSON.parse(fs.readFileSync(__dirname + '/admin.txt', 'utf8'));
                //console.log(typeof data);
                var user = await find(data, obj => {
                    //console.log(user);
                    return obj.username === username
                });
                
                if (!user) {
                    console.log('User Not Found with username ' + username);
                    return done(null, false,
                        req.flash('loginMessage', 'User Not found.'));
                } else {
                    // Object.keys(users).map(i => peopleObj[i])
                    var checkPassword = user.password === password;
                    if (!checkPassword) {
                        console.log('Invalid Password');
                        return done(null, false,
                            req.flash('loginMessage', 'Invalid Password'));
    
                    }else{
                        return done(null, user);
                    }
                }
                
    
            } catch (err) {
                return done(err);
            }
        }));
}
