//连接数据库

var MongoClient = require('mongodb').MongoClient;
var assert = require('assert');
var url = 'mongodb://localhost:27017';
var dbName = 'mafengwo';

function query(callback) {
	MongoClient.connect(url, function(err, client) {
		assert.equal(null, err);
		console.log('Connected successfully to server');
		var db = client.db(dbName);
		callback(db);
		client.close();
	});
}

//输出
module.exports = {
	query
}