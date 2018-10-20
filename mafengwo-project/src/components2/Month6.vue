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