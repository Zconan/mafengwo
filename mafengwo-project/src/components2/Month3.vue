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