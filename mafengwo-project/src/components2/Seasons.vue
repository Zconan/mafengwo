<template>
	<section class="block">
		<a class="item-hd" href="#">
			<h2>当季推荐</h2>
			<p class="dec">每月最适合前往的目的地推荐</p>
		</a>
		<div class="scopebar">
			<div class="scrollview">
				<div class="conbox">
					<a v-for="(a,index) in areas" :key="index" v-text="a" :class="{cur:page===index}" @click="changeTab(index)"></a>
				</div>
			</div>
		</div>
		<div class="item-list" v-for="(obj,key,idx) in continents" :key="index" v-show="page===idx">
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
				page: 9,
				areas: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
				continents: {
					month1: [{
						title: '香港',
						pic: require('../assets/city42.jpg')
					}, {
						title: '三亚',
						pic: require('../assets/city43.jpg')
					}, {
						title: '清迈',
						pic: require('../assets/city44.jpg')
					}, {
						title: '广州',
						pic: require('../assets/city45.jpg')
					}, {
						title: '新加坡',
						pic: require('../assets/city46.jpg')
					}, {
						title: '哈尔滨',
						pic: require('../assets/city47.jpg')
					}],
					month2: [{
						title: '普吉岛',
						pic: require('../assets/city48.jpg')
					}, {
						title: '南京',
						pic: require('../assets/city49.jpg')
					}, {
						title: '昆明',
						pic: require('../assets/city50.jpg')
					}, {
						title: '芽庄',
						pic: require('../assets/city51.jpg')
					}, {
						title: '新西兰',
						pic: require('../assets/city52.jpg')
					}, {
						title: '长滩岛',
						pic: require('../assets/city53.jpg')
					}],
					month3: [{
						title: '日本',
						pic: require('../assets/city54.jpg')
					}, {
						title: '西安',
						pic: require('../assets/city55.jpg')
					}, {
						title: '重庆',
						pic: require('../assets/city56.jpg')
					}, {
						title: '大阪',
						pic: require('../assets/city57.jpg')
					}, {
						title: '杭州',
						pic: require('../assets/city58.jpg')
					}, {
						title: '台北',
						pic: require('../assets/city59.jpg')
					}],
					month4: [{
						title: '云南',
						pic: require('../assets/city60.jpg')
					}, {
						title: '曼谷',
						pic: require('../assets/city61.jpg')
					}, {
						title: '大理',
						pic: require('../assets/city62.jpg')
					}, {
						title: '东京',
						pic: require('../assets/city63.jpg')
					}, {
						title: '澳门',
						pic: require('../assets/city64.jpg')
					}, {
						title: '新疆',
						pic: require('../assets/city65.jpg')
					}],
					month5: [{
						title: '厦门',
						pic: require('../assets/city66.jpg')
					}, {
						title: '美国',
						pic: require('../assets/city67.jpg')
					}, {
						title: '青岛',
						pic: require('../assets/city68.jpg')
					}, {
						title: '张家界',
						pic: require('../assets/city69.jpg')
					}, {
						title: '拉萨',
						pic: require('../assets/city70.jpg')
					}, {
						title: '九寨沟',
						pic: require('../assets/city71.jpg')
					}],
					month6: [{
						title: '台湾',
						pic: require('../assets/city72.jpg')
					}, {
						title: '青海',
						pic: require('../assets/city73.jpg')
					}, {
						title: '黑龙江',
						pic: require('../assets/city74.jpg')
					}, {
						title: '吉隆坡',
						pic: require('../assets/city75.jpg')
					}, {
						title: '北海道',
						pic: require('../assets/city76.jpg')
					}, {
						title: '青海湖',
						pic: require('../assets/city77.jpg')
					}],
					month7: [{
						title: '西藏',
						pic: require('../assets/city78.jpg')
					}, {
						title: '内蒙古',
						pic: require('../assets/city79.jpg')
					}, {
						title: '大连',
						pic: require('../assets/city80.jpg')
					}, {
						title: '意大利',
						pic: require('../assets/city81.jpg')
					}, {
						title: '亚庇',
						pic: require('../assets/city82.jpg')
					}, {
						title: '凤凰古城',
						pic: require('../assets/city83.jpg')
					}],
					month8: [{
						title: '黄山',
						pic: require('../assets/city84.jpg')
					}, {
						title: '斯里兰卡',
						pic: require('../assets/city85.jpg')
					}, {
						title: '长白山',
						pic: require('../assets/city86.jpg')
					}, {
						title: '呼伦贝尔',
						pic: require('../assets/city87.jpg')
					}, {
						title: '俄罗斯',
						pic: require('../assets/city88.jpg')
					}, {
						title: '敦煌',
						pic: require('../assets/city89.jpg')
					}],
					month9: [{
						title: '上海',
						pic: require('../assets/city90.jpg')
					}, {
						title: '桂林',
						pic: require('../assets/city91.jpg')
					}, {
						title: '长沙',
						pic: require('../assets/city92.jpg')
					}, {
						title: '土耳其',
						pic: require('../assets/city93.jpg')
					}, {
						title: '阳朔',
						pic: require('../assets/city94.jpg')
					}, {
						title: '西塘',
						pic: require('../assets/city95.jpg')
					}],
					month10: [{
						title: '澳大利亚',
						pic: require('../assets/city96.jpg')
					}, {
						title: '珠海',
						pic: require('../assets/city97.jpg')
					}, {
						title: '香格里拉',
						pic: require('../assets/city98.jpg')
					}, {
						title: '垦丁',
						pic: require('../assets/city99.jpg')
					}, {
						title: '西班牙',
						pic: require('../assets/city100.jpg')
					}, {
						title: '稻城',
						pic: require('../assets/city101.jpg')
					}],
					month11: [{
						title: '北京',
						pic: require('../assets/city102.jpg')
					}, {
						title: '柬埔寨',
						pic: require('../assets/city103.jpg')
					}, {
						title: '甲米',
						pic: require('../assets/city104.jpg')
					}, {
						title: '乌镇',
						pic: require('../assets/city105.jpg')
					}, {
						title: '涠洲岛',
						pic: require('../assets/city106.jpg')
					}, {
						title: '济南',
						pic: require('../assets/city107.jpg')
					}],
					month12: [{
						title: '深圳',
						pic: require('../assets/city108.jpg')
					}, {
						title: '苏梅岛',
						pic: require('../assets/city109.jpg')
					}, {
						title: '迪拜',
						pic: require('../assets/city110.jpg')
					}, {
						title: '毛里求斯',
						pic: require('../assets/city111.jpg')
					}, {
						title: '雪乡',
						pic: require('../assets/city112.jpg')
					}, {
						title: '漠河',
						pic: require('../assets/city113.jpg')
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

</style>