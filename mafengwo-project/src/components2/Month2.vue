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