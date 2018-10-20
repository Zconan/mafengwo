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