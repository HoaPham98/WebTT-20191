const { TicketStatus, Price, Ticket } = require('../models/tickets');

exports.getTicketStatus = async function (req, res) {
    //console.log(req.params.id);
    const ticketStatus = await TicketStatus.query()
        //.where('id', req.params.id);
    res.send(ticketStatus);
}

exports.insertTicketStatus = async function (req, res) {
    const tempTicketStatus = req.body;
    const ticketStatus = await TicketStatus.query()
        .allowInsert('[name]')
        .insert(tempTicketStatus)
    res.send("okInsertTicketStatus")
}

exports.updateTicketStatus = async function (req, res) {
    const tempTicketStatus = await TicketStatus.query()
        .findById(req.body.id)
        .patch({
            name: req.body.name,
        })
    res.send("okUpdateTicketStatus")
}

exports.delTicketStatus = async function (req, res) {
    const room = await TicketStatus.query()
        .deleteById(req.params.id)
    res.send("okDeleteTicketStatus");
}