<template>
	<div class="box">
		<div class="top">
			<a href="#/sales"></a>
			<p>我的订单</p>
		</div>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide" v-for="(a,index) in arrs" :key="index">
					<img :src="a" alt="" />
				</div>
			</div>
		</div>
		<div class="navs">
			<ul>
				<li v-for="(n,index) in tabs" :key="index" @click="changeTabs(index)">
					<a href="javascript:void(0)" :class="{active1:page===index}">
						<span :class="{active2:page===index}"></span>
						<p v-text="n"></p>
					</a>
				</li>
			</ul>
		</div>
		<div class="null" v-if="goods.length === 0">找不到订单？尝试通过手机号查询订单</div>
		<div class="order" v-if="goods.length !== 0">
			<ul>
				<li class="all"><label><input type="checkbox" v-model="selectAll" @click="all" /> 全选</label></li>
				<li class="g" v-for="(g,index) in goods" :key="index" :num="g.guid">
					<h4><label><input type="checkbox" :value="g.guid" v-model="selects" @click="selectRow(g.guid)" /></label> {{g.title}}</h4>
					<div class="pic"><img :src="g.imgurl" alt="" /></div>
					<div class="price">
						<div class="num">
							<span class="dec" @click="dec(index)"> - </span>
							<span v-text="g.qty"></span>
							<span class="add" @click="add(index)"> + </span>
						</div>
						<p>￥ <span>{{(g.price*g.qty).toFixed(2)}}</span></p>
					</div>
					<div class="del" @click="del(g.guid)">删除订单</div>
				</li>
			</ul>
		</div>
		<div class="total" v-if="goods.length !== 0">
			<span>总金额：</span>
			<span v-text="totalPrice"></span>
		</div>
	</div>
</template>

<script>
	import Swiper from 'swiper'
	import '../../node_modules/swiper/dist/css/swiper.css'
	import $ from 'jquery'
	export default {
		data() {
			return {
				id: this.$route.params.id,
				page: 0,
				arrs: [require('../assets/carImg1.jpg'), require('../assets/carImg2.png')],
				tabs: ['全部', '待支付', '待出行', '待点评', '取消/退款'],
				goods: [],
				selects: [],
				selectAll: false
			}
		},
		methods: {
			changeTabs(index) {
				this.page = index;
			},
			getCookie() {
				var goodslist = document.cookie;
				var idx = goodslist.indexOf('[');
				goodslist = goodslist.slice(idx);
				if(goodslist === '') {
					goodslist = [];
				} else {
					goodslist = JSON.parse(goodslist);
				}
				this.goods = goodslist;
			},
			//减数量
			dec(index) {
				if(this.goods[index].qty > 1) {
					this.goods[index].qty--;
				} else {
					this.goods[index].qty = 1;
				}
			},
			//加数量
			add(index) {
				if(this.goods[index].qty >= 10) {
					this.goods[index].qty = 10;
				} else if(this.goods[index].qty < 10) {
					this.goods[index].qty++;
				}
			},
			selectRow(guid) {
				var idx = this.selects.indexOf(guid);
				if(idx >= 0) {
					this.selects.splice(idx, 1);
				} else {
					this.selects.push(guid);
				}
			},
			//全选
			all() {
				if(!this.selectAll) {
					this.goods.forEach(item => {
						if(this.selects.indexOf(item.guid) === -1) {
							this.selects.push(item.guid);
						}
					});
				} else {
					this.selects = [];
				}
			},
			//删除商品
			del(guid) {
				this.goods.forEach((item, index) => {
					if(item.guid === guid) {
						this.goods.splice(index, 1);
					}
				});
				this.selects.forEach((item, index) => {
					if(item === guid) {
						this.selects.splice(index, 1);
					}
				});
				if(this.goods.length === 0) {
					// 设置过期时间
					var now = new Date();
					now.setDate(now.getDate() - 1);
					document.cookie = 'goodslist=null;expires=' + now.toUTCString();
				}
			}
		},
		computed: {
			//计算总金额
			totalPrice: function() {
				var total = 0;
				this.selects.forEach(item => {
					total += $('.g[num=' + item + '] p span').text() * 1;
				});
				return total.toFixed(2);
			}
		},
		mounted() {
			this.getCookie();
			var swiper = new Swiper('.swiper-container', {
				spaceBetween: 30,
				centeredSlides: true,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
				pagination: {
					el: '.swiper-pagination',
					clickable: true,
				}
			});
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
	
	.top a {
		float: left;
		width: 50px;
		height: 50px;
		background: url(../assets/strategyheader.png) no-repeat -5px -5px;
		background-size: 115px;
	}
	
	.top p {
		width: 150px;
		height: 50px;
		text-align: center;
		line-height: 50px;
		font-size: 16px;
		color: #666;
		margin: 0 auto;
	}
	
	.swiper-container .swiper-slide img {
		width: 100%;
		height: 50px;
	}
	
	.navs ul {
		display: flex;
	}
	
	.navs ul li {
		flex: 1;
		height: 70px;
		padding: 0 10px;
	}
	
	.navs ul li a {
		display: block;
		text-align: center;
		height: 65px;
	}
	
	.navs ul li a.active1 {
		border-bottom: 2px solid #ffdb26;
	}
	
	.navs ul li a span {
		display: block;
		width: 40px;
		height: 35px;
		margin: 5px auto;
		background: url(../assets/car.png) no-repeat;
		background-size: 115px;
		background-position-x: -30px;
	}
	
	.navs ul li:first-child a span {
		background-position-y: -108px;
	}
	
	.navs ul li:nth-child(2) a span {
		background-position-y: -36px;
	}
	
	.navs ul li:nth-child(3) a span {
		background-position-y: -70px;
	}
	
	.navs ul li:nth-child(5) a span {
		background-position-y: -265px;
	}
	
	.navs ul li a span.active2 {
		background-position-x: 7px;
	}
	
	.navs ul li a p {
		font-size: 12px;
		color: #474747;
	}
	
	.null {
		padding-top: 160px;
		background: #f4f4f4 url(../assets/null.png) no-repeat center -150px;
		background-size: 130px;
		text-align: center;
		font-size: 13px;
		color: #474747;
		height: 330px;
		position: absolute;
		top: 176px;
		left: 0;
		right: 0;
	}
	
	.order {
		margin-top: 10px;
		background: #f2f2f2;
	}
	
	.order ul li {
		padding: 0 15px;
		background: #fff;
	}
	
	.order ul .all {
		height: 30px;
		line-height: 30px;
		font-size: 14px;
		color: #474747;
		background: #fff;
	}
	
	.order ul .g {
		margin-top: 5px;
		overflow: hidden;
		color: #474747;
	}
	
	.order ul .g h4 {
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		height: 40px;
		line-height: 40px;
		font-weight: normal;
	}
	
	.order ul .g .pic {
		float: left;
		width: 100px;
		height: 75px;
	}
	
	.order ul .g .pic img {
		width: 150px;
	}
	
	.order ul .g .price {
		float: right;
		width: 180px;
		height: 75px;
		padding-left: 80px;
		padding-top: 20px;
		box-sizing: border-box;
	}
	
	.order ul .g .price .num span {
		display: inline-block;
		width: 20px;
		height: 20px;
		text-align: center;
		line-height: 20px;
		border: 1px solid #e8e8e8;
	}
	
	.order ul .g .price .num span:nth-child(2) {
		width: 30px;
	}
	
	.order ul .g .price p {
		height: 30px;
		line-height: 30px;
		font-size: 14px;
		margin-top: 5px;
	}
	
	.order ul .g .del {
		float: right;
		width: 80px;
		height: 20px;
		line-height: 20px;
		text-align: center;
		border: 1px solid #e8e8e8;
		font-size: 12px;
		margin: 15px 0;
		margin-right: 20px;
	}
	
	.total {
		position: fixed;
		left: 0;
		right: 0;
		bottom: 0;
		border-top: 1px solid #e8e8e8;
		background: #fff;
	}
	
	.total span {
		display: inline-block;
		height: 50px;
		line-height: 50px;
		color: red;
		font-weight: bolder;
	}
	
	.total span:first-child {
		margin-left: 200px;
		font-size: 18px;
	}
	
	.total span:last-child {
		font-size: 14px;
	}
</style>