const express = require('express');
const path = require('path');
const hbs = require('hbs');

// set the port
const port = process.env.PORT || 5050;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.use('/', require('./routes/index'));

app.use((req, res, next) => {
    var err = new Error('Not Found');
    err.status = 404;
    err.customMessage = "You freaking dummy!";

    next(err);
})

app.use((err, req, res, next) => {
    res.render('error', {data: err, layout: 'errorPage'})
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})


// app.get('/', function (req, res) {
//     pool.query('SELECT * FROM tbl_info', function (error, results, fields) {
//     if (error) throw error;
//     console.log(results);

//     res.render('home', {
//         Soccer: results[0],
//         Music: results[1],
//         Weed: results[2]
//     })
//     });
//   })

//   app.get('/*', function (req, res) {
//     res.render('err');;
//   })
