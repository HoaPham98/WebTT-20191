const nodemailer = require('nodemailer');
const transport = nodemailer.createTransport({
    service: 'Gmail',
    auth: {
        user: process.env.user_nodemailer,
        pass: process.env.password_nodemailer
    },
});

exports.send = function (to, subject, message) {
    const mailOptions = {
        from: 'Nhà hát kịch nhóm 4',
        to,
        subject,
        html: message,
    };
    transport.sendMail(mailOptions, (error) => {
        if (error) {
            console.log(error);
        }
    });
};