<template>
	<div class="box">
		<div class="header">
			<router-link to="/Home">
				<a href="#"></a>
			</router-link>
		</div>
		<div class="nav">
			<div v-for="(a,index) in arrs" v-text="a" :class="{active:index===page}" @click="changeTab(index)"></div>
		</div>
		<div class="link">
			<a href="#">忘记密码？</a>
		</div>
		<div class="btns">
			<button type="submit">登录</button>
			<button type="button">快速注册</button>
		</div>
		<div class="connect">
			<div>
				<span>使用第三方账号登录</span>
			</div>
			<ul>
				<li>
					<a href="#">新浪微博</a>
				</li>
				<li>
					<a href="#">QQ登录</a>
				</li>
			</ul>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				page: 0,
				arrs: ['普通登录', '短信验证码登录']
			}
		},
		method: {
			changeTab(index) {
				this.page = index;
			}
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	a {
		text-decoration: none;
		color: #999;
	}
	
	.box {
		padding: 0 9px;
	}
	
	.header a {
		display: block;
		width: 100px;
		height: 30px;
		margin: 20px auto;
		background: url(../assets/logo.png) no-repeat center center;
		background-size: 100px;
	}
	
	.nav {
		display: flex;
		padding-bottom: 30px;
	}
	
	.nav div {
		flex: 1;
		height: 40px;
		color: #999;
		border-top: 2px solid #dadada;
		font-size: 14px;
		line-height: 42px;
		text-align: center;
		background: #fafafa;
	}
	
	.nav div.active {
		border-top: 2px solid #ffba33;
		background: #fff;
		color: #ffba33;
	}
	
	.link {
		padding: 4px;
		text-align: right;
		color: #999;
	}
	
	.link a {
		font-size: 12px;
	}
	
	.btns {
		padding-top: 10px;
	}
	
	.btns button {
		width: 100%;
		display: block;
		margin: 10px 0;
		font-size: 18px;
		height: 34px;
		line-height: 34px;
		text-align: center;
		border-radius: 5px;
	}
	
	.btns button:nth-child(1) {
		background: #ffba33;
		border: 1px solid #d8b165;
		color: #fff;
	}
	
	.btns button:nth-child(2) {
		background: #fff;
		border: 1px solid #ffba33;
		color: #ffba33;
	}
	
	.connect {
		margin-top: 40px;
		padding-bottom: 20px;
	}
	
	.connect div {
		border-top: 1px solid #d8d8d8;
		height: 25px;
		position: relative;
	}
	
	.connect div span {
		position: absolute;
		left: 50%;
		margin-left: -66px;
		top: -8px;
		font-size: 12px;
		color: #ccc;
		padding: 0 5px;
		background: #fff;
	}
	
	.connect ul {
		display: flex;
		justify-content: space-between;
	}
	
	.connect ul li {
		width: 50%;
		list-style: none;
	}
	
	.connect ul li a {
		display: block;
		margin: 0 15px;
		height: 62px;
		border: 1px solid #e6e5e5;
		text-align: center;
		color: #666;
		font-size: 14px;
		padding-bottom: 8px;
		border-radius: 5px;
		line-height: 110px;
	}
	
	.connect ul li:nth-child(1) a {
		background: #f3f3f3 url(../assets/weibo.png) no-repeat center 12px;
		background-size: 30px;
	}
	
	.connect ul li:nth-child(2) a {
		background: #f3f3f3 url(../assets/qq.png) no-repeat center 12px;
		background-size: 25px;
	}
</style>