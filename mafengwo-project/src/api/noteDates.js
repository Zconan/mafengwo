//看游记数据
var mysql = require('mysql');
var express = require('express');
var app = express();
app.get('/notedates', function(req, res) {
	var page = req.query.page;
	var qty = req.query.qty;
	var min = qty * (page - 1) + 1;
	var max = qty * page;
	res.append("Access-Control-Allow-Origin", "*");
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '',
		database: 'mafengwo'
	});
	connection.connect();
	var sql = 'select * from note where id>=' + min + ' and id<=' + max;
	connection.query(sql, function(err, result) {
		if(err) {
			throw err;
		}
		res.send(result);
	});
	connection.end();
});
app.listen(9994);