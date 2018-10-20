<template>
	<div class="item-list clearfix">
		<a v-for="(a,index) in arrs" :key="index" href="#">
			<img :src="a.pic">
			<div v-text="a.title" class="title"></div>
		</a>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				arrs: [{
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
				}]
			}
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	.item-list {
		padding-top: 20px;
	}
	.item-list a {
		float: left;
		padding-left: 15px;
		text-decoration: none;
	}
	.item-list img {
		width: 103px;
		height: 85px;
		display: block;
	}
	.item-list .title {
		font-size: 16px;
		color: #111;
		text-align: center;
		width: 103px;
		height: 45px;
		line-height: 40px;
	}
</style>