<template>
	<div class="box">
		<ul>
			<li>
				<input v-model="username" name="passport" type="text" placeholder="您的用户名/手机号" autocomplete="off" value="">
			</li>
			<li>
				<input v-model="password" name="password" type="password" placeholder="您的密码" autocomplete="off" value="">
			</li>
		</ul>
		<div class="link">
			<a href="#">忘记密码？</a>
		</div>
		<div class="btns">
			<button @click="login" type="submit">登录</button>
			<router-link to="/register" tag="button">快速注册</router-link>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				username: '',
				password: ''
			}
		},
		methods: {
			login() {
				var self = this;
				var statusCode = [200, 304];
				var xhr = new XMLHttpRequest();
				xhr.onload = function() {
					if(statusCode.indexOf(xhr.status) >= 0) {
						if(xhr.responseText == 'yes') {
							alert('恭喜您，登录成功');
							location.href = '#/home';
						} else if(xhr.responseText == 'no') {
							alert('用户名或密码不正确');
							self.username = '';
							self.password = '';
						}
					}
				}
				xhr.open('post', 'http://localhost:9995/logincheck', true);
				xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				xhr.send('username=' + self.username + '&password=' + self.password);
			}
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