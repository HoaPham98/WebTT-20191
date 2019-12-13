exports.isValidInsertDramatic = function (req, res, next) {
    const tempDramatic = req.body;
    if (tempDramatic.name.length > 0){
    	next();
    }else{
    	res.send('Invalid name')
    }
    // var author req.body.author;
    // var director req.body.director;
    // var music req.body.music;
    // var poster req.body.poster;
    // var decorator req.body.decorator;
    // var actor req.body.actor;
    // var sumary req.body.sumary;
}

exports.isValidUpdateDramatic = function (req, res, next) {
    const tempDramatic = req.body;
    if (tempDramatic.name.length > 0){
        next();
    }else{
        res.send('Invalid name')
    }
}

exports.isValidParam = function (req, res, next) {
	const paramFormat = /^[1-9]+[0-9]*$/;
    if(paramFormat.test(req.params.id)){
    	next();
    }else{
    	res.send('Invalid param')
    }
}

exports.isValidInsertRoom = function (req, res, next) {
    const integerFormat = /^[1-9]+[0-9]*$/;
    const tempRoom = req.body;
    if (integerFormat.test(tempRoom.column_number)&&
        integerFormat.test(tempRoom.row_number)){
        next();
    }else{
        res.send('Invalid name')
    }
}

exports.isValidUpdateDramatic = function (req, res, next) {
    const tempDramatic = req.body;
    if (tempDramatic.name.length > 0){
        next();
    }else{
        res.send('Invalid name')
    }
}