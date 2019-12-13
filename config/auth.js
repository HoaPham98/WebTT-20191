const auth = async function (req, res, next) {
    try {
        const user = req.user
        if (!user) {
            req.session.redirectTo = req.path
            res.redirect('/login')
        }
        next();
    } catch (error) {
        res.status(401).send({ error: 'Not authorized to access this resource' });
    }

}

const authAdmin = async function (req, res, next) {
    try {
        const user = req.user
        if (!user) {
            res.redirect('/login')
            return
        }
        if (!user.isAdmin) {
            res.redirect('/404')
            return
        }
        next();
    } catch (error) {
        res.status(401).send({ error: 'Not authorized to access this resource' });
    }

}

module.exports = { auth, authAdmin }