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