<template>
	<section class="block">
		<a class="item-hd" href="#">
			<h2>热门目的地</h2>
			<p class="dec">最受大家喜欢的目的地推荐</p>
		</a>
		<div class="scopebar">
			<div class="scrollview">
				<div class="conbox">
					<a v-for="(a,index) in areas" :key="index" v-text="a" :class="{cur:page===index}" @click="changeTab(index)"></a>
				</div>
			</div>
		</div>
		<div class="item-list" v-for="(obj,key,idx) in continents" :key="idx" v-show="page===idx">
			<a href="#" v-for="o in obj">
				<img :src="o.pic" />
				<div class="title" v-text="o.title"></div>
			</a>
		</div>
	</section>
</template>

<script>
	export default {
		data() {
			return {
				page: 0,
				areas: ['国内', '港澳台', '日韩', '东南亚', '南亚 西亚', '欧洲 美洲', '澳洲 非洲'],
				continents: {
					inland: [{
						title: '北京',
						pic: require('../assets/city0.jpg')
					}, {
						title: '厦门',
						pic: require('../assets/city1.jpg')
					}, {
						title: '三亚',
						pic: require('../assets/city2.jpg')
					}, {
						title: '上海',
						pic: require('../assets/city3.jpg')
					}, {
						title: '成都',
						pic: require('../assets/city4.jpg')
					}, {
						title: '丽江',
						pic: require('../assets/city5.jpg')
					}],
					gat: [{
						title: '香港',
						pic: require('../assets/city6.jpg')
					}, {
						title: '澳门',
						pic: require('../assets/city7.jpg')
					}, {
						title: '台北',
						pic: require('../assets/city8.jpg')
					}, {
						title: '垦丁',
						pic: require('../assets/city9.jpg')
					}, {
						title: '花莲',
						pic: require('../assets/city10.jpg')
					}, {
						title: '高雄',
						pic: require('../assets/city11.jpg')
					}],
					rh: [{
						title: '东京',
						pic: require('../assets/city12.jpg')
					}, {
						title: '大阪',
						pic: require('../assets/city13.jpg')
					}, {
						title: '首尔',
						pic: require('../assets/city14.jpg')
					}, {
						title: '京都',
						pic: require('../assets/city15.jpg')
					}, {
						title: '济州岛',
						pic: require('../assets/city16.jpg')
					}, {
						title: '札幌',
						pic: require('../assets/city17.jpg')
					}],
					dny: [{
						title: '曼谷',
						pic: require('../assets/city18.jpg')
					}, {
						title: '普吉岛',
						pic: require('../assets/city19.jpg')
					}, {
						title: '清迈',
						pic: require('../assets/city20.jpg')
					}, {
						title: '巴厘岛',
						pic: require('../assets/city21.jpg')
					}, {
						title: '新加坡',
						pic: require('../assets/city22.jpg')
					}, {
						title: '吉隆坡',
						pic: require('../assets/city23.jpg')
					}],
					nxy: [{
						title: '迪拜',
						pic: require('../assets/city24.jpg')
					}, {
						title: '加德满都',
						pic: require('../assets/city25.jpg')
					}, {
						title: '科伦坡',
						pic: require('../assets/city26.jpg')
					}, {
						title: '阿布扎比',
						pic: require('../assets/city27.jpg')
					}, {
						title: '博卡拉',
						pic: require('../assets/city28.jpg')
					}, {
						title: '新德里',
						pic: require('../assets/city29.jpg')
					}],
					om: [{
						title: '塞班岛',
						pic: require('../assets/city30.jpg')
					}, {
						title: '巴黎',
						pic: require('../assets/city31.jpg')
					}, {
						title: '洛杉矶',
						pic: require('../assets/city32.jpg')
					}, {
						title: '伦敦',
						pic: require('../assets/city33.jpg')
					}, {
						title: '罗马',
						pic: require('../assets/city34.jpg')
					}, {
						title: '纽约',
						pic: require('../assets/city35.jpg')
					}],
					af: [{
						title: '悉尼',
						pic: require('../assets/city36.jpg')
					}, {
						title: '墨尔本',
						pic: require('../assets/city37.jpg')
					}, {
						title: '奥克兰',
						pic: require('../assets/city38.jpg')
					}, {
						title: '黄金海岸',
						pic: require('../assets/city39.jpg')
					}, {
						title: '皇后镇',
						pic: require('../assets/city40.jpg')
					}, {
						title: '凯恩斯',
						pic: require('../assets/city41.jpg')
					}]
				}
			}
		},
		methods: {
			changeTab(index) {
				this.page = index;
			}
		}
	}
</script>

<style>
	* {
		margin: 0;
		padding: 0;
	}
	
	.block {
		position: relative;
		padding-bottom: 280px;
	}
	
	.block .item-hd {
		padding: 20px 15px 25px;
		display: block;
		text-align: center;
		text-decoration: none;
		border-bottom: 1px solid #ddd;
	}
	
	.block .item-hd h2 {
		font-size: 20px;
		font-weight: normal;
		color: #111;
		height: 30px;
		line-height: 30px;
	}
	
	.block .item-hd .dec {
		font-size: 14px;
		color: #999;
	}
	
	.block .scopebar .scrollview {
		overflow: auto;
		z-index: 1;
	}
	
	.block .scopebar .scrollview .conbox {
		width: 1050px;
	}
	
	.block .scopebar .scrollview .conbox a {
		float: left;
		height: 45px;
		line-height: 45px;
		font-size: 16px;
		color: #696969;
		padding: 0 19px;
		text-decoration: none;
	}
	
	.block .scopebar .scrollview .conbox a.cur {
		color: #ff9d00;
		border-bottom: 1px solid #ff9d00;
	}
	
	.block .item-list {
		padding-top: 20px;
		position: absolute;
	}
	
	.block .item-list a {
		float: left;
		padding-left: 15px;
		text-decoration: none;
	}
	
	.block .item-list img {
		width: 103px;
		height: 85px;
		display: block;
	}
	
	.block .item-list .title {
		font-size: 16px;
		color: #111;
		text-align: center;
		width: 103px;
		height: 45px;
		line-height: 40px;
	}
</style>