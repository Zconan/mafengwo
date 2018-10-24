<template>
	<div>
		<h3>大家都在买</h3>
		<ul>
			<li v-for="(a,index) in arrs" :key="index" @click="getGood(index)">
				<img :src="a.pic" alt="" />
				<h4 v-text="a.title"></h4>
				<p><span>￥ {{a.price}}</span> 起</p>
			</li>
		</ul>
		<a href="javascript:void(0);" @click="getDates">查看更多</a>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				page: 1,
				arrs: []
			}
		},
		methods: {
			getDates() {
				var self = this;
				var statusCode = [200, 304];
				var xhr = new XMLHttpRequest();
				xhr.onload = function() {
					if(statusCode.indexOf(xhr.status) >= 0) {
						self.arrs = self.arrs.concat(JSON.parse(xhr.responseText));
					}
				}
				xhr.open('get', 'http://localhost:9992/saledates?qty=10&page=' + (self.page++), true);
				xhr.send();
			},
			getGood(index) {
				var statusCode = [200, 304];
				var xhr = new XMLHttpRequest();
				xhr.onload = function() {
					if(statusCode.indexOf(xhr.status) >= 0) {
						console.log(JSON.parse(xhr.responseText));
					}
				}
				xhr.open('get', 'http://localhost:9991/good?num=' + (index+1), true);
				xhr.send();
			}
		},
		mounted() {
			this.getDates();
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	h3 {
		height: 46px;
		line-height: 46px;
		text-align: center;
		background: #f7f7f7;
		font-weight: normal;
		font-size: 18px;
		color: #999;
	}
	
	ul {
		display: flex;
		flex-wrap: wrap;
		padding: 0 10px;
		justify-content: space-between;
	}
	
	ul li {
		width: 48%;
		height: 220px;
		list-style: none;
		margin-bottom: 5px;
		border: 1px solid #e8e8e8;
	}
	
	ul li img {
		width: 100%;
		height: 128px;
	}
	
	ul li h4 {
		height: 46px;
		padding: 0 5px;
		margin-top: 3px;
		font-size: 15px;
		line-height: 23px;
		color: #111;
		overflow: hidden;
		text-overflow: ellipsis;
		font-weight: normal;
	}
	
	ul li p {
		padding: 0 3px;
		color: #999;
		margin-top: 3px;
		font-size: 12px;
	}
	
	ul li p span {
		font-size: 14px;
		color: #ff7800;
	}
	
	a {
		display: block;
		height: 40px;
		line-height: 40px;
		padding-left: 15px;
		color: #586C94;
		text-decoration: none;
	}
</style>