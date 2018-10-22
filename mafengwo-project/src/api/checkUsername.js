//验证用户名是否注册

var express = require('express');
var app = express();
var mongo = require('./connectMongodb.js');

app.get('/checkusername', function(req, res) {
	//接收前端参数
	var username = req.query.username;
	res.append("Access-Control-Allow-Origin", "*");
	var whereUsername = {
		username
	};
	mongo.query(function(db) {
		db.collection('user').find(whereUsername).toArray(function(err, result) {
			if(err) {
				throw err;
			}
			//console.log(result);[{_id:,phone:}]
			if(result.length == 0) {
				res.send('yes');
			}
			if(result.length != 0) {
				res.send('no');
			}
		});
	});
});
app.listen(9998);