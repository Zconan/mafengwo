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
					title: '黄山',
					pic: require('../assets/city84.jpg')
				}, {
					title: '斯里兰卡',
					pic: require('../assets/city85.jpg')
				}, {
					title: '长白山',
					pic: require('../assets/city86.jpg')
				}, {
					title: '呼伦贝尔',
					pic: require('../assets/city87.jpg')
				}, {
					title: '俄罗斯',
					pic: require('../assets/city88.jpg')
				}, {
					title: '敦煌',
					pic: require('../assets/city89.jpg')
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