/**
 * Created by olyjosh on 29/06/2017.
 */

var sender = 'smtps://haehyo01%40gmail.com'   // The emailto use in sending the email(Change the @ symbol to %40 or do a url encoding )
var password = 'kitkat43'  // password of the email to use

var nodemailer = require("nodemailer");
var fs = require("fs");
var ejs = require("ejs");

var transporter = nodemailer.createTransport({
    service: "Gmail",
    auth: {
        user: 'haehyo01@gmail.com',
        pass: 'kitkat43'
    }
});

// create template based sender function
// assumes text.{ext} and html.{ext} in template/directory

exports.sendMail = function (email, name, transaction) {
    ejs.renderFile(__dirname + "/mail.ejs", { name: name, transaction: transaction }, function (err, data) {
        if (err) {
            console.log(err);
        } else {
            var mainOptions = {
                from: '"NHÀ HÁT KỊCH 4H" hotro@4h.com',
                to: email,
                subject: 'Giao dịch thành công',
                html: data
            };
            console.log("html data ======================>", mainOptions.html);
            transporter.sendMail(mainOptions, function (err, info) {
                if (err) {
                    console.log(err);
                } else {
                    console.log('Message sent: ' + info.response);
                }
            });
        }
        
        });
};