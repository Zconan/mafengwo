//登录验证

var express = require('express');
var app = express();
var mongo = require('./connectMongodb.js');
var bodyParser = require('body-parser');
var md5 = require('md5');

app.use(bodyParser.urlencoded({
	extended: false
}));

app.post('/logincheck', function(req, res) {
	//接收前端参数
	var username = req.body.username;
	var password = md5(req.body.password);
	res.append("Access-Control-Allow-Origin", "*");
	var myobj = {
		username,
		password
	};
	mongo.query(function(db) {
		db.collection('user').find(myobj).toArray(function(err, result) {
			if(err) {
				throw err;
				res.send('no');
			}
			if(result.length === 0) {
				res.send('no');
			}
			if(result.length !== 0) {
				res.send('yes');
			}
		});
	});
});
app.listen(9995);