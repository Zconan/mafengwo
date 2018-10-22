<template>
	<div class="box">
		<ul>
			<li>
				<input name="mobile" type="text" placeholder="您的手机号" autocomplete="off">
			</li>
			<li>
				<input name="code" type="text" placeholder="验证码" autocomplete="off">
				<div class="code"><span v-text="codeNum"></span></div>
			</li>
			<li>
				<input name="smscode" type="text" placeholder="短信验证码" autocomplete="off">
				<div class="getcode">
					<a href="#">获取手机验证码</a>
				</div>
			</li>
		</ul>
		<div class="link">
			<a href="#">忘记密码？</a>
		</div>
		<div class="btns">
			<button type="submit">登录</button>
			<router-link to="/register" tag="button">快速注册</router-link>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				codeNum: ''
			}
		},
		methods: {
			code() {
				var nums = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
				var res = '';
				for(var i = 0; i < 4; i++) {
					res += nums[parseInt(Math.random() * 62)];
				}
				this.codeNum = res;
			}
		},
		mounted() {
			this.code();
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	.box {
		padding: 0 9px;
	}
	
	ul {
		border-radius: 5px;
		border: 1px solid #dadada;
	}
	
	ul li {
		border-bottom: 1px solid #dadada;
		position: relative;
	}
	
	ul li:last-child {
		border-bottom: 0;
	}
	
	ul li input {
		height: 43px;
		background: 0;
		border: 0;
		font-size: 16px;
		line-height: 43px;
		width: 100%;
		text-indent: 11px;
		color: #dadada;
	}
	
	ul li .code {
		position: absolute;
		bottom: 5px;
		right: 5px;
	}
	
	ul li .code span {
		display: block;
		height: 33px;
		padding: 0 15px;
		line-height: 33px;
		background: #ff8a00;
		color: #fff;
		border-radius: 4px;
	}
	
	ul li .getcode {
		position: absolute;
		bottom: 5px;
		right: 5px;
	}
	
	ul li .getcode a {
		display: block;
		width: 110px;
		height: 33px;
		line-height: 33px;
		border-radius: 4px;
		text-align: center;
		background: #ff8a00;
		font-size: 12px;
		color: #fff;
		white-space: nowrap;
		text-decoration: none;
	}
	
	.link {
		padding: 4px;
		text-align: right;
		color: #999;
	}
	
	.link a {
		font-size: 12px;
		text-decoration: none;
		color: #999;
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
</style>