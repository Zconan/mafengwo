//爬取页面图片存入数据库

//引入模块
var request = require('request');
var cheerio = require('cheerio');
var fs = require('fs');
var mongo = require('./connectMongodb');

//爬取页面
function getHtml() {
	return new Promise(function(resolve) {
		request('https://m.mafengwo.cn/mdd/', function(error, response, body) {
			resolve(body);
		});
	});
}

//分析页面
function analysis(body) {
	return new Promise(function(resolve) {
		var imgArr = [];
		var $ = cheerio.load(body);
		$('.item-list a img').each(function(index, item) {
			imgArr.push(item.attribs['data-original']);
		});
		resolve(imgArr);
	});
}

//下载并存入数据库
function downLoad(imgArr) {
	return new Promise(function(resolve) {
		imgArr.forEach(function(item, index) {
			//下载图片到本地
			request(item).pipe(fs.createWriteStream('../assets/city' + index + '.jpg'));
			//插入数据库
			var myobj = {
				url: item
			};
			mongo.query(function(db) {
				db.collection('strategyImg').insertOne(myobj, function(err, res) {
					if(err) {
						throw err;
					}
				});
			});
		});
	})
}

getHtml().then(analysis).then(downLoad);