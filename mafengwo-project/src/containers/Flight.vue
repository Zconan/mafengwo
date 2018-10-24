<template>
	<div>
		<div class="f-head">
			<h1>国内机票</h1>
			<router-link to="/home"> < </router-link>
		</div>
		<ul class="book-tab">
			<li v-for="(t,index) in tabs" :key="index">
				<a href="#/flight" :class="{active:page===index}" v-text="t" @click="changeTab(index)"></a>
			</li>
		</ul>
		<ul class="row-city">
			<li v-for="(c,index) in cities" :key="index">
				<label v-text="c.title"></label>
				<p v-text="c.city"></p>
			</li>
			<a href="javascript:void(0);" @click="changeCity"></a>
		</ul>
		<ul class="row-date">
			<li>
				<label>去程日期</label>
				<p>10月24日<span> 周三</span></p>
			</li>
			<li v-show="isShow">
				<label>返程日期</label>
				<p>10月25日<span> 周四</span></p>
			</li>

		</ul>
		<a class="btn-search">搜索</a>
		<ul class="tool-bar">
			<li>
				<a><i></i>我的优惠券</a>
			</li>
			<li>
				<a><i></i>我的订单</a>
			</li>
		</ul>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				page: 0,
				tabs: ['单程', '往返'],
				isShow: false,
				cities: [{
					title: '出发城市',
					city: '北京'
				}, {
					title: '到达城市',
					city: '上海'
				}]
			}
		},
		methods: {
			changeTab(index) {
				this.page = index;
				switch(index) {
					case 0:
						this.isShow = false;
						break;
					case 1:
						this.isShow = true;
						break;
				}
			},
			changeCity() {
				var flag = this.cities[0].city;
				this.cities[0].city = this.cities[1].city;
				this.cities[1].city = flag;
			}
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
	
	.f-head {
		height: 43px;
		border-bottom: 1px solid #e5e5e5;
		padding: 0 15px;
		line-height: 43px;
		text-align: center;
		position: relative;
	}
	
	.f-head h1 {
		font-size: 18px;
		font-weight: normal;
		color: #111;
		width: 200px;
		height: 43px;
		position: absolute;
		left: 50%;
		margin-left: -100px;
	}
	
	.f-head a {
		position: absolute;
		left: 15px;
		font-size: 30px;
		color: #ff9d00;
	}
	
	.book-tab {
		border-bottom: 1px solid #e5e5e5;
		display: flex;
	}
	
	.book-tab li {
		flex: 1;
		border-right: 1px solid #e5e5e5;
	}
	
	.book-tab li a {
		display: block;
		width: 20%;
		height: 48px;
		line-height: 48px;
		font-size: 18px;
		color: #111;
		padding: 0 10px;
		margin: 0 auto;
	}
	
	.book-tab li a.active {
		border-bottom: 1px solid #ff9d00;
		color: #ff9d00;
	}
	
	.row-city {
		position: relative;
		overflow: hidden;
		padding: 15px 15px 0;
	}
	
	.row-city li {
		float: left;
		width: 42%;
		padding-bottom: 16px;
		border-bottom: 1px solid #e5e5e5;
	}
	
	.row-city li:nth-child(2) {
		float: right;
		text-align: right;
	}
	
	.row-city li label,
	.row-date li label {
		display: block;
		font-size: 12px;
		color: #999;
	}
	
	.row-city li p,
	.row-date li p {
		font-size: 20px;
		color: #111;
		line-height: 30px;
		margin-top: 5px;
	}
	
	.row-city a {
		position: absolute;
		width: 54px;
		height: 46px;
		background: url(../assets/change.png) no-repeat center center;
		background-size: 35px;
	}
	
	.row-date {
		display: flex;
		padding: 15px 15px 0;
	}
	
	.row-date li {
		width: 50%;
		padding-bottom: 16px;
		border-bottom: 1px solid #e5e5e5;
	}
	
	.row-date li:last-child {
		text-align: right;
	}
	
	.row-date li p {
		font-size: 16px;
	}
	
	.row-date li p span {
		font-size: 12px;
		color: #999;
	}
	
	.btn-search {
		display: block;
		width: 283px;
		height: 45px;
		background: #ff9d00;
		text-align: center;
		line-height: 45px;
		color: #fff;
		font-size: 14px;
		border-radius: 3px;
		margin: 10px auto;
	}
	
	.tool-bar {
		position: absolute;
		left: 0;
		bottom: 0;
		overflow: hidden;
		width: 100%;
		padding-bottom: 10px;
	}
	
	.tool-bar li {
		width: 50%;
		text-align: center;
		float: left;
	}
	
	.tool-bar li a {
		font-size: 12px;
		color: #111;
	}
	
	.tool-bar li a i {
		display: block;
		width: 25px;
		height: 25px;
		margin: 0 auto;
	}
	
	.tool-bar li:first-child a i {
		background: url(../assets/yhq.png) no-repeat center center;
		background-size: 25px;
	}
	
	.tool-bar li:last-child a i {
		background: url(../assets/dd.png) no-repeat center center;
		background-size: 22px;
	}
</style>