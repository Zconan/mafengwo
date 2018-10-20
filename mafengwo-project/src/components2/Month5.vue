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