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