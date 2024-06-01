const express = require('express');
const app = express();
const port = 3000;

const config = {
    host: 'db',
    user: 'root',
    password: 'root',
    database: 'nodedb'
};

const mysql = require('mysql');
const connection = mysql.createConnection(config);

const tableSql = `CREATE TABLE IF NOT EXISTS people (id int not null auto_increment, name varchar(255), primary key(id))`;
connection.query(tableSql);


const sqlInsert = `INSERT INTO people(name) values('Fulano')`;
connection.query(sqlInsert);
connection.end();

app.get('/', (req, res) => {
    const connection = mysql.createConnection(config);
    const sqlSelect = `SELECT name FROM people`;
    connection.query(sqlSelect, (err, result) => {
        if (err) throw err;
        const names = result.map((row) => row.name);
        const namesStr = names.join(', ');
        res.send(`<h1>Full Cycle Rocks! </h1><br> - ${namesStr}`);
    });
})

app.listen(port, () => {
  console.log(`Running on http://localhost:${port}`);
})