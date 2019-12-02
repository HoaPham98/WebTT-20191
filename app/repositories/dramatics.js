const { Dramatic } = require('../models/dramatic')

exports.getDramatics = async function() {
    const dramatics = await Dramatic.query();

    return dramatics
}