const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, TITTLE, IMAGE, DESCRIPTION,  FROM tbl_3favoritecartoons";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        // console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { team: result });

    
    })
})

// localhost3000/anything
router.get('/users/:id', (req, res) => {
    console.log('at the user route!');
    console.log(req.params.id);

    let query = `SELECT DESCRIPTION FROM tbl_3favoritecartoons WHERE ID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

         console.log(result); // should see objects wrapped in an array

         // turn our social media property into an array - its just text in the DB,
         // which isn't really anything we can work with
       

         // console.log('after split: ', result[0]);

        // send the DB query back to the browser
         res.json(result);

    
    })
})

module.exports = router;