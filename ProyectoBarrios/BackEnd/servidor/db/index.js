const {Pool} = require ('pg');

const pool = new Pool({
    user: process.env.PGUSER,
    host: process.env.PGHOST,
    password: process.env.PGPASSWORD,
    database: process.env.PGDATABASE,
    port: process.env.PGPORT
});

const query = function (text, values){
    return pool.query(text, values)
}

module.exports = {
    query
}