//结伴数据
var mysql = require('mysql');
var express = require('express');
var app = express();
app.get('/togetherdates', function(req, res) {
	res.append("Access-Control-Allow-Origin", "*");
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '',
		database: 'mafengwo'
	});
	connection.connect();
	var sql = 'select * from together';
	connection.query(sql, function(err, result) {
		if(err) {
			throw err;
		}
		res.send(result);
	});
	connection.end();
});
app.listen(9993);