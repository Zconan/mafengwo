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
					title: '澳大利亚',
					pic: require('../assets/city96.jpg')
				}, {
					title: '珠海',
					pic: require('../assets/city97.jpg')
				}, {
					title: '香格里拉',
					pic: require('../assets/city98.jpg')
				}, {
					title: '垦丁',
					pic: require('../assets/city99.jpg')
				}, {
					title: '西班牙',
					pic: require('../assets/city100.jpg')
				}, {
					title: '稻城',
					pic: require('../assets/city101.jpg')
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