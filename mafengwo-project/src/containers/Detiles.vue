<template>
	<div class="box">
		<div class="top">
			<a href="#/sales" class="fh"></a>
			<a href="#" class="fx"></a>
		</div>

		<div class="picture">
			<img v-for="a in arrs" :src="a.pic" alt="" />
		</div>

		<div class="informations">
			<div class="title">
				<p v-for="a in arrs"><span>店铺</span> {{a.title}}</p>
			</div>
			<div class="tag">
				<span>6星品质</span>
				<span>酒店屡次获奖</span>
				<span>强势空间</span>
			</div>
			<div class="price">
				<span>￥ </span>
				<span v-for="a in arrs" v-text="a.price"></span>
				<span>~</span>
				<span v-for="a in arrs" v-text="(a.price*1.2).toFixed(0)"></span>
				<span>价格说明</span>
				<span>月售31</span>
			</div>
			<div class="vip">
				<img src="../assets/vip.png" alt="" />
				<span v-for="a in arrs">金卡专享96折，折后可省￥{{(a.price*0.04).toFixed(0)}}-{{(a.price*1.2*0.04).toFixed(0)}}</span>
				<a href="#">去开通</a>
			</div>
			<div class="yhq">
				<a href="#">领取店铺优惠券<span> > </span></a>
			</div>
			<div class="yh">
				<ul>
					<li><em>立减</em><span>11月5日 00:00开始，限时下单立减</span></li>
					<li><em>促销</em><span>11.11-11.31期间下单，部分套餐，第二件优惠100元</span></li>
					<li><em>蜂蜜</em><span>蜂蜜抵30%</span></li>
				</ul>
			</div>
		</div>

		<div class="topBuyItem">
			<a class="hd" href="#">
				选择：套餐类型/日期/人群
				<span>班期：10/27-04/30</span>
			</a>
			<div class="bd">
				<a href="#" v-for="(d,index) in datas" :key="index">
					<div class="date" v-text="d.date"></div>
					<div class="price" v-text="d.price"></div>
				</a>
			</div>
			<a href="#" class="more">更多<br>班期</a>
			<div class="remind-box">
				<i></i>
				<p>此产品需要二次确认，商家将在18个工作小时内（工作日9:00-18:00）核实是否有位!</p>
			</div>
		</div>

		<div class="footer">
			<ul>
				<li v-for="(n,index) in navs" :key="index" v-text="n" @click="footerTabs(index)"></li>
			</ul>
		</div>

	</div>
</template>

<script>
	export default {
		data() {
			return {
				id: this.$route.params.id,
				arrs: [],
				datas: [{
					date: '10-27 周六',
					price: '￥11300起'
				}, {
					date: '10-28 周日',
					price: '￥11250起'
				}, {
					date: '10-29 周一',
					price: '￥11300起'
				}, {
					date: '10-30 周二',
					price: '￥12680起'
				}, {
					date: '10-31 周三',
					price: '￥12680起'
				}, {
					date: '11-01 周四',
					price: '￥12688起'
				}, {
					date: '11-02 周五',
					price: '￥12688起'
				}, {
					date: '11-03 周六',
					price: '￥12688起'
				}],
				navs: ['客服', '店铺', '收藏', '立即购买']
			}
		},
		methods: {
			getGood() {
				var self = this;
				var statusCode = [200, 304];
				var xhr = new XMLHttpRequest();
				xhr.onload = function() {
					if(statusCode.indexOf(xhr.status) >= 0) {
						self.arrs = JSON.parse(xhr.responseText);
					}
				}
				xhr.open('get', 'http://localhost:9999/good?num=' + (self.id * 1 + 1), true);
				xhr.send();
			},
			footerTabs(index) {
				if(index === 3) {
					var self = this;
					var statusCode = [200, 304];
					var xhr = new XMLHttpRequest();
					xhr.onload = function() {
						if(statusCode.indexOf(xhr.status) >= 0) {
							var res = JSON.parse(xhr.responseText);
							var goodslist = document.cookie;
							var idx = goodslist.indexOf('[');
							goodslist = goodslist.slice(idx);
							if(goodslist === '') {
								goodslist = [];
							} else {
								goodslist = JSON.parse(goodslist);
							}
							//判断数量
							var qty;
							for(var i = 0; i < goodslist.length; i++) {
								if(res[0].id === goodslist[i].guid) {
									goodslist[i].qty++;
									break;
								}
							}
							if(i === goodslist.length) {
								//保存商品信息
								var good = {
									guid: res[0].id,
									imgurl: res[0].pic,
									title: res[0].title,
									price: res[0].price,
									qty: 1
								}
								goodslist.push(good);
							}
							//保存cookie
							document.cookie = 'goodslist=' + JSON.stringify(goodslist);
							location.href = '#/car';
						}
					}
					xhr.open('get', 'http://localhost:9999/good?num=' + (self.id * 1 + 1), true);
					xhr.send();
				}
			}
		},
		mounted() {
			this.getGood();
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	a {
		text-decoration: none;
	}
	
	li {
		list-style: none;
	}
	
	.box {
		position: relative;
		padding-top: 200px;
		background: #f4f4f4;
	}
	
	.top {
		height: 44px;
		background: rgba(0, 0, 0, 0.1);
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		z-index: 1;
	}
	
	.top .fh,
	.top .fx {
		width: 44px;
		height: 44px;
	}
	
	.top .fh {
		float: left;
		background: url(../assets/fhw.png) no-repeat center center;
		background-size: 10px;
	}
	
	.top .fx {
		float: right;
		background: url(../assets/fxw.png) no-repeat center center;
		background-size: 15px;
	}
	
	.picture {
		background: #000;
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		height: 200px;
	}
	
	.picture img {
		height: 200px;
		width: 100%;
	}
	
	.informations {
		padding: 10px 15px;
		background: #fff;
	}
	
	.informations .title p {
		height: 92px;
		line-height: 23px;
		overflow: hidden;
		text-overflow: ellipsis;
		font-weight: bolder;
	}
	
	.informations .title p span {
		background: #80aaff;
		border-radius: 3px;
		font-size: 12px;
		color: #fff;
		padding: 5px 5px;
	}
	
	.informations .tag {
		margin-top: 3px;
	}
	
	.informations .tag span {
		font-size: 10px;
		color: #696969;
		padding: 5px;
	}
	
	.informations .tag span:first-child {
		padding-left: 0;
	}
	
	.informations .price {
		padding: 10px 0;
	}
	
	.informations .price span {
		color: #ff4a26;
		font-size: 18px;
		font-weight: bolder;
	}
	
	.informations .price span:first-child {
		font-size: 12px;
	}
	
	.informations .price span:nth-child(5) {
		font-size: 12px;
		color: #30a2f3;
		padding-left: 12px;
		font-weight: normal;
	}
	
	.informations .price span:last-child {
		font-size: 12px;
		color: #767676;
		float: right;
		font-weight: normal;
		margin-top: 5px;
	}
	
	.informations .vip {
		padding: 5px 0;
		background: #fffbef;
	}
	
	.informations .vip img {
		width: 44px;
		vertical-align: middle;
		margin-top: 3px;
	}
	
	.informations .vip span {
		font-size: 12px;
		padding-left: 10px;
	}
	
	.informations .vip a {
		color: #b37012;
		font-size: 12px;
		padding-left: 40px;
	}
	
	.informations .yhq {
		border-bottom: 1px solid #ebebeb;
		margin-bottom: 5px;
	}
	
	.informations .yhq a {
		display: block;
		height: 40px;
		line-height: 40px;
		padding-left: 15px;
		color: #474747;
		font-size: 12px;
		background: url(../assets/yhq.png) no-repeat 0 center;
		background-size: 12px;
	}
	
	.informations .yhq a span {
		float: right;
	}
	
	.informations .yh ul li {
		height: 25px;
		line-height: 25px;
		font-size: 12px;
		color: #696969;
	}
	
	.informations .yh ul li em {
		font-style: normal;
		border: 1px solid #ff4a26;
		color: #ff4a26;
		padding: 0 5px;
	}
	
	.informations .yh ul li span {
		padding-left: 5px;
	}
	
	.topBuyItem {
		padding: 0 15px;
		margin-top: 10px;
		background: #fff;
		position: relative;
	}
	
	.topBuyItem .hd {
		display: block;
		height: 45px;
		line-height: 45px;
		font-size: 14px;
		color: #474747;
	}
	
	.topBuyItem .hd span {
		float: right;
		font-size: 12px;
	}
	
	.topBuyItem .bd {
		overflow: auto;
		white-space: nowrap;
		margin-top: 5px;
		padding-bottom: 8px;
		border-bottom: 1px solid #ebebeb;
	}
	
	.topBuyItem .bd a {
		display: inline-block;
		width: 78px;
		border: 1px solid #ebebeb;
		margin-right: 5px;
		line-height: 25px;
		text-align: center;
		color: #474747;
		font-size: 12px;
	}
	
	.topBuyItem .bd a .date {
		height: 25px;
	}
	
	.topBuyItem .bd a .price {
		height: 25px;
		font-weight: 600;
	}
	
	.topBuyItem .more {
		position: absolute;
		top: 50px;
		right: 10px;
		height: 52px;
		line-height: 26px;
		background: #fff;
		width: 50px;
		font-size: 12px;
		color: #30a2f3;
		text-align: center;
	}
	
	.topBuyItem .remind-box {
		height: 40px;
		padding: 7px 0 7px 20px;
		background: url(../assets/xx.png) no-repeat left center;
		background-size: 15px;
	}
	
	.topBuyItem .remind-box p {
		font-size: 12px;
		color: #474747;
		height: 40px;
		line-height: 20px;
	}
	
	.footer {
		position: fixed;
		left: 0;
		right: 0;
		bottom: 0;
	}
	
	.footer ul {
		display: flex;
	}
	
	.footer ul li {
		width: 60px;
		height: 20px;
		font-size: 12px;
		padding-top: 30px;
		color: #474747;
		line-height: 20px;
		text-align: center;
		background: #fff;
	}
	
	.footer ul li:last-child {
		flex: 1;
		background: #ffdb26;
		height: 50px;
		line-height: 50px;
		padding: 0;
		font-size: 16px;
	}
	
	.footer ul li:first-child {
		background: #fff url(../assets/kf.png) no-repeat center 5px;
		background-size: 20px;
	}
	
	.footer ul li:nth-child(2) {
		background: #fff url(../assets/dp.png) no-repeat center 5px;
		background-size: 20px;
	}
	
	.footer ul li:nth-child(3) {
		background: #fff url(../assets/sc.png) no-repeat center 5px;
		background-size: 20px;
	}
</style>