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
					title: '上海',
					pic: require('../assets/city90.jpg')
				}, {
					title: '桂林',
					pic: require('../assets/city91.jpg')
				}, {
					title: '长沙',
					pic: require('../assets/city92.jpg')
				}, {
					title: '土耳其',
					pic: require('../assets/city93.jpg')
				}, {
					title: '阳朔',
					pic: require('../assets/city94.jpg')
				}, {
					title: '西塘',
					pic: require('../assets/city95.jpg')
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