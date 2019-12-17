const nodemailer = require('nodemailer');
const transport = nodemailer.createTransport({
    service: 'Gmail',
    auth: {
        user: 'nhahatkichnhom4@gmail.com',
        pass: 'lehoang97@'
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