<template>
	<div class="notes-list">
		<a v-for="(a,index) in arrs" :key="index" class="notes-item" href="#">
			<div class="l-text">
				<h3 class="title" v-text="a.title"></h3>
				<div class="user"><img :src="heads[index]">{{a.name}}<span class="ml8">在<span class="highlight" v-text="a.site"></span></span>
				</div>
				<div class="nums"><span class="n-view"><i></i>{{a.view}}</span><span class="n-reply"><i></i>{{a.reply}}</span></div>
			</div>
			<div class="r-pic"><img :src="imgs[index]"></div>
		</a>
		<div class="ld">
			<a href="javascript:void(0);" @click="dates">查看更多</a>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				page: 1,
				arrs: [],
				heads: [
					require('../assets/head0.jpg'),
					require('../assets/head1.jpg'),
					require('../assets/head2.jpg'),
					require('../assets/head3.jpg'),
					require('../assets/head4.jpg'),
					require('../assets/head5.jpg'),
					require('../assets/head6.jpg'),
					require('../assets/head7.jpg'),
					require('../assets/head8.jpg'),
					require('../assets/head9.jpg'),
					require('../assets/head10.jpg'),
					require('../assets/head11.jpg'),
					require('../assets/head5.jpg'),
					require('../assets/head4.jpg'),
					require('../assets/head6.jpg'),
					require('../assets/head7.jpg'),
					require('../assets/head2.jpg'),
					require('../assets/head9.jpg'),
					require('../assets/head1.jpg'),
					require('../assets/head8.jpg')
				],
				imgs: [
					require('../assets/pics0.jpg'),
					require('../assets/pics1.jpg'),
					require('../assets/pics2.jpg'),
					require('../assets/pics3.jpg'),
					require('../assets/pics4.jpg'),
					require('../assets/pics5.jpg'),
					require('../assets/pics6.jpg'),
					require('../assets/pics7.jpg'),
					require('../assets/pics8.jpg'),
					require('../assets/pics9.jpg'),
					require('../assets/pics10.jpg'),
					require('../assets/pics11.jpg'),
					require('../assets/city6.jpg'),
					require('../assets/city7.jpg'),
					require('../assets/city8.jpg'),
					require('../assets/city9.jpg'),
					require('../assets/city10.jpg'),
					require('../assets/city11.jpg'),
					require('../assets/city69.jpg'),
					require('../assets/city70.jpg')
				]
				
			}
		},
		methods: {
			dates() {
				var self = this;
				var statusCode = [200, 304];
				var xhr = new XMLHttpRequest();
				xhr.onload = function() {
					if(statusCode.indexOf(xhr.status) >= 0) {
						self.arrs = self.arrs.concat(JSON.parse(xhr.responseText));
					}
				}
				xhr.open('get', 'http://localhost:9994/notedates?qty=10&page=' + (self.page++), true);
				xhr.send();
			}
		},
		mounted() {
			this.dates();
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	.notes-item {
		display: block;
		margin: 10px 0;
		overflow: hidden;
	}
	
	.notes-item .l-text {
		float: left;
		width: 150px;
		height: 130px;
		padding: 0 15px;
	}
	
	.notes-item .title {
		margin: 5px 0 15px;
		font-size: 16px;
		line-height: 20px;
		color: #111;
		overflow: hidden;
		height: 72px;
	}
	
	.notes-item .user {
		color: #999;
		line-height: 20px;
		height: 20px;
		font-size: 14px;
		margin-bottom: 6px;
	}
	
	.notes-item .user img {
		width: 20px;
		height: 20px;
		border-radius: 50%;
		margin-right: 5px;
		vertical-align: middle;
	}
	
	.notes-item .ml8 {
		margin-left: 5px;
	}
	
	.notes-item .ml8 .highlight {
		color: #ff9d00;
	}
	
	.notes-item .nums {
		font-size: 12px;
		color: #999;
		line-height: 14px;
	}
	
	.notes-item .nums span {
		margin-right: 5px;
		padding-left: 12px;
	}
	
	.notes-item .nums span:first-child {
		background: url(../assets/pl.png) no-repeat 0 center;
		background-size: 10px;
	}
	
	.notes-item .nums span:last-child {
		background: url(../assets/pl2.png) no-repeat 0 center;
		background-size: 10px;
	}
	
	.notes-item .r-pic {
		float: right;
	}
	
	.notes-item .r-pic img {
		width: 195px;
		height: 130px;
	}
	.notes-list .ld a {
		text-decoration: none;
		color: #586C94;
		font-size: 14px;
		padding: 0 0 10px 12px;
		margin-top: 10px;
	}
</style>