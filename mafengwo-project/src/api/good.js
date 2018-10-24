//获取被点击商品详情
var mysql = require('mysql');
var express = require('express');
var app = express();
app.get('/good', function(req, res) {
	var num = req.query.num;
	res.append("Access-Control-Allow-Origin", "*");
	var connection = mysql.createConnection({
		host: 'localhost',
		user: 'root',
		password: '',
		database: 'mafengwo'
	});
	connection.connect();
	var sql = 'select * from sale where id=' + num;
	connection.query(sql, function(err, result) {
		if(err) {
			throw err;
		}
		res.send(result);
	});
	connection.end();
});
app.listen(9991);