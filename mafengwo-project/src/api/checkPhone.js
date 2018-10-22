//验证手机号码是否注册

var express = require('express');
var app = express();
var mongo = require('./connectMongodb.js');

app.get('/checkphone', function(req, res) {
	//接收前端参数
	var phone = req.query.phone;
	res.append("Access-Control-Allow-Origin", "*");
	var wherePhone = {
		phone
	};
	mongo.query(function(db) {
		db.collection('phone').find(wherePhone).toArray(function(err, result) {
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
app.listen(9996);