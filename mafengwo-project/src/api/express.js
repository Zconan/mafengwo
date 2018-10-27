//引入模块
var request = require('request');
var express = require('express');
var app = express();
var mysql = require('mysql');
var mongo = require('./connectMongodb.js');
var bodyParser = require('body-parser');
var md5 = require('md5');

app.use(bodyParser.urlencoded({
	extended: false
}));

//服务器代理
app.get('/getdates', function(req, res) {
	//接收前端参数
	var pageNum = req.query.page*1;
	res.append("Access-Control-Allow-Origin", "*");
	request('https://m.mafengwo.cn/?category=get_info_flow_list&page=' + pageNum, function(error, response, body) {
		console.log(pageNum);
		res.send(JSON.parse(body));
	});
});

//看游记数据
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

//结伴数据
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

//列表页数据
app.get('/saledates', function(req, res) {
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
	var sql = 'select * from sale where id>=' + min + ' and id<=' + max;
	connection.query(sql, function(err, result) {
		if(err) {
			throw err;
		}
		res.send(result);
	});
	connection.end();
});

//获取被点击商品详情
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

//验证用户名是否注册
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

//登录验证
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

//保存注册信息
app.post('/saveinformations', function(req, res) {
	//接收前端参数
	var username = req.body.username;
	var password = md5(req.body.password);
	res.append("Access-Control-Allow-Origin", "*");
	var myobj = {
		username,
		password
	};
	mongo.query(function(db) {
		db.collection('user').insertOne(myobj, function(err, result) {
			if(err) {
				throw err;
				res.send('no');
			} else {
				console.log('插入数据成功');
				res.send('yes');
			}
		});
	});
});

//验证手机号码是否注册
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

app.listen(9999);