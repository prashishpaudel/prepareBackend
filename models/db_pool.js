var mysql = require('mysql');
var database = require('../config/database');

var pool = mysql.createPool(database['prepare']);

module.exports = pool;