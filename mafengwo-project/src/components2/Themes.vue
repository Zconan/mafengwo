<template>
	<section class="block">
		<a class="item-hd" href="#">
			<h2>主题推荐</h2>
			<p class="dec">大量主题出行，个性化你的旅行</p>
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
				page: 0,
				areas: ['全年适宜', '季节', '出行方式', '节假日'],
				continents: {
					annual: [{
						title: '免签',
						pic: require('../assets/city114.jpg')
					}, {
						title: '人文历史',
						pic: require('../assets/city115.jpg')
					}, {
						title: '拍摄圣地',
						pic: require('../assets/city116.jpg')
					}, {
						title: '自然风景',
						pic: require('../assets/city117.jpg')
					}, {
						title: '小众',
						pic: require('../assets/city118.jpg')
					}, {
						title: '登山',
						pic: require('../assets/city119.jpg')
					}],
					seasons: [{
						title: '草原',
						pic: require('../assets/city120.jpg')
					}, {
						title: '星空',
						pic: require('../assets/city121.jpg')
					}, {
						title: '赏花',
						pic: require('../assets/city122.jpg')
					}, {
						title: '雪景',
						pic: require('../assets/city123.jpg')
					}, {
						title: '海岛',
						pic: require('../assets/city124.jpg')
					}, {
						title: '极限运动',
						pic: require('../assets/city125.jpg')
					}],
					modes: [{
						title: '徒步',
						pic: require('../assets/city126.jpg')
					}, {
						title: '自驾',
						pic: require('../assets/city127.jpg')
					}, {
						title: '游轮',
						pic: require('../assets/city128.jpg')
					}, {
						title: '旅行',
						pic: require('../assets/city129.jpg')
					}, {
						title: '蜜月',
						pic: require('../assets/city130.jpg')
					}, {
						title: '亲子游',
						pic: require('../assets/city131.jpg')
					}],
					holiday: [{
						title: '元旦',
						pic: require('../assets/city132.jpg')
					}, {
						title: '春节',
						pic: require('../assets/city133.jpg')
					}, {
						title: '清明',
						pic: require('../assets/city134.jpg')
					}, {
						title: '五一',
						pic: require('../assets/city135.jpg')
					}, {
						title: '端午',
						pic: require('../assets/city136.jpg')
					}, {
						title: '中秋',
						pic: require('../assets/city137.jpg')
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

<style></style>