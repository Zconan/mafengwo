var request = require('request');
var express = require('express');
var app = express();

app.get('/getdates', function(req, res) {
	var pageNum = req.query.page*1;
	res.append("Access-Control-Allow-Origin", "*");
	request('https://m.mafengwo.cn/?category=get_info_flow_list&page=' + pageNum, function(error, response, body) {
		console.log(pageNum);
		res.send(JSON.parse(body));
	});
});
app.listen(9999);