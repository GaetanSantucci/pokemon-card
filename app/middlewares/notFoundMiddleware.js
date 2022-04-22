function errorPage(req, res) {
    res.status(404).render("pages/error");
}

module.exports = { errorPage };
