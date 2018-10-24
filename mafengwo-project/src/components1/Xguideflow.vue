<template>
	<div class="guideflow">
		<div class="hd">
			<h3> > 推荐攻略 < </h3>
		</div>
		<div class="bd">
			<a v-for="(a,index) in arrs" :key="index" href="#">
				<div class="title">
					{{a.data.title}}
					<div class="tag">
						<img v-if="index===0" :src="fs" alt="">
					</div>
				</div>
				<dl class="clearfix">
					<!--广告大图显示-->
					<dt><img :src="a.data.image" alt="" :class="{big:a.style=='article'}"><span v-if="a.style=='article'">广告</span></dt>
					<!--非广告显示-->
					<dd v-if="a.style=='image_text'">
						<div class="summary" v-text="a.data.content"></div>
						<div class="extra">
							{{a.data_source.pv}}浏览
							<!--用户的显示-->
							<div class="author" v-if="a.data.bottom.hasOwnProperty('user')">
								{{a.data.bottom.user.name}}
								<img :src="a.data.bottom.user.logo">
							</div>
							<!--问答/攻略显示-->
							<div v-if="a.data.bottom.hasOwnProperty('tag')" v-text="a.data.bottom.tag.text" class="btn" :class="{active:a.data.bottom.tag.text=='问答'}"></div>
						</div>
					</dd>
				</dl>
			</a>
		</div>
		<div class="ld">
			<a href="javascript:void(0);" @click="getDates">查看更多</a>
		</div>
	</div>

</template>

<script>
	export default {
		data() {
			return {
				fs: require('../assets/fs.png'),
				num: 0,
				arrs: []
			}
		},
		methods: {
			getDates: function() {
				var self = this;
				var statusCode = [200, 304];
				var xhr = new XMLHttpRequest();
				xhr.onload = function() {
					if(statusCode.indexOf(xhr.status) >= 0) {
						var dates = JSON.parse(xhr.responseText);
						self.arrs = self.arrs.concat(dates.data.list);
					}
				}
				xhr.open('get', 'http://localhost:9999/getdates?page=' + (self.num++), true);
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
	
	.guideflow .hd {
		background: #f8f8f8;
	}
	
	.guideflow .hd h3 {
		width: 100%;
		height: 34px;
		line-height: 34px;
		text-align: center;
		font-size: 14px;
		color: #999;
		font-weight: normal;
	}
	
	.guideflow .bd a {
		display: block;
		text-decoration: none;
		padding-bottom: 5px;
	}
	
	.guideflow .bd a .title {
		font-size: 18px;
		color: #111;
		padding: 0 40px 0 12px;
		position: relative;
	}
	
	.guideflow .bd a .title .tag {
		position: absolute;
		right: 0;
		bottom: 0;
	}
	
	.guideflow .bd a .tag img {
		width: 40px;
		height: 21px;
	}
	
	.guideflow .bd a dl {
		padding: 12px;
		box-sizing: border-box;
		display: flex;
	}
	
	.guideflow .bd a dl dt {
		width: 130px;
	}
	
	.guideflow .bd a dl dt img {
		width: 130px;
		height: 90px;
	}
	
	.guideflow .bd a dl dt img.big {
		width: 345px;
		height: 150px;
	}
	
	.guideflow .bd a dl dt span {
		display: block;
		color: #9fb622;
		border: 1px solid #9fb622;
		width: 35px;
		text-align: center;
	}
	
	.guideflow .bd a dl dd {
		margin-left: 20px;
		color: #999;
	}
	
	.guideflow .bd a dl dd .summary {
		width: 200px;
		height: 58px;
		font-size: 14px;
		display: -webkit-box;
		-webkit-line-clamp: 3;
		-webkit-box-orient: vertical;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	
	.guideflow .bd a dl dd .extra {
		width: 200px;
		height: 20px;
		font-size: 10px;
		margin-top: 15px;
		position: relative;
		line-height: 20px;
	}
	
	.guideflow .bd a dl dd .extra .author,
	.guideflow .bd a dl dd .extra .btn {
		position: absolute;
		right: 0;
		bottom: 0;
	}
	
	.guideflow .bd a dl dd .extra .author img {
		width: 20px;
		height: 20px;
		border-radius: 50%;
		vertical-align: middle;
	}
	
	.guideflow .bd a dl dd .extra .btn {
		color: #f63c3c;
		border: 1px solid #f63c3c;
		padding: 0 2px;
	}
	
	.guideflow .bd a dl dd .extra .btn.active {
		color: #30d2bf;
		border: 1px solid #30d2bf;
		padding: 0 2px;
	}
	
	.guideflow .ld a {
		text-decoration: none;
		color: #586C94;
		font-size: 14px;
		padding: 0 0 10px 12px;
		display: block;
	}
</style>