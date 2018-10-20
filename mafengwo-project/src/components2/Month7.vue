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