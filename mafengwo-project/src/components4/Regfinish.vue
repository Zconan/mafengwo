<template>
	<div class="box">
		<ul>
			<li>
				<input v-model="username" @blur="checkUser" name="name" type="text" placeholder="你的用户名（由4到8位字母、数字或下划线组成）" autocomplete="off">
			</li>
			<li>
				<input v-model="password" name="password" type="password" placeholder="你的密码（由6到18位字母或数字组成）" autocomplete="off">
			</li>
			<li>
				<input v-model="inputCode" name="smscode" type="text" placeholder="验证码" autocomplete="off">
				<div class="getcode">
					<a href="#" @click="code">免费获取验证码</a><span v-text="codeNum" v-show="codeNum!==''"></span>
				</div>
			</li>
		</ul>
		<div class="btns">
			<button @click="save" class="btn" type="submit">完成注册</button>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				username: '',
				password: '',
				codeNum: '',
				inputCode: ''
			}
		},
		methods: {
			checkUser() {
				//用户名格式验证（由4到8位字母、数字或下划线组成）
				if(!(/^[a-zA-Z0-9_]{4,8}$/.test(this.username))) {
					alert('用户名格式错误');
					this.username = '';
				} else if(/^[a-zA-Z0-9_]{4,8}$/.test(this.username)) {
					//用户名是否已注册验证
					var self = this;
					var statusCode = [200, 304];
					var xhr = new XMLHttpRequest();
					xhr.onload = function() {
						if(statusCode.indexOf(xhr.status) >= 0) {
							if(xhr.responseText=== 'no') {
								alert('该用户名已注册');
								self.username = '';
							}
						}
					}
					xhr.open('get', 'http://localhost:9998/checkusername?username=' + self.username, true);
					xhr.send();
				}
			},
			//获取验证码
			code() {
				var nums = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
				var res = '';
				for(var i = 0; i < 4; i++) {
					res += nums[parseInt(Math.random() * 62)];
				}
				this.codeNum = res;
			},
			save() {
				//密码格式验证（由6到18位字母或数字组成）
				if(!(/^[a-zA-Z0-9]{6,18}$/.test(this.password))) {
					alert('密码格式错误');
					this.password = '';
				} else if(this.inputCode !== this.codeNum) {
					//验证码验证
					alert('输入的验证码不正确');
					this.inputCode = '';
				} else {
					//保存注册信息
					var self = this;
					var statusCode = [200, 304];
					var xhr = new XMLHttpRequest();
					xhr.onload = function() {
						if(statusCode.indexOf(xhr.status) >= 0) {
							if(xhr.responseText === 'yes'){
								alert('恭喜您，注册成功');
								location.href = '#/login';
							} else if(xhr.responseText === 'no'){
								alert('很遗憾，注册失败');
								location.href = '#/regsuccess';
							}
						}
					}
					xhr.open('post', 'http://localhost:9997/saveinformations', true);
					xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
					xhr.send('username=' + self.username + '&password=' + self.password);
				}
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
		position: relative;
	}
	
	ul li:last-child {
		border-bottom: 0;
	}
	
	ul li input {
		height: 43px;
		background: 0;
		border: 0;
		font-size: 14px;
		line-height: 43px;
		width: 100%;
		text-indent: 11px;
	}
	
	ul li .getcode {
		position: absolute;
		bottom: 5px;
		right: 5px;
	}
	
	ul li .getcode a,
	ul li .getcode span {
		display: inline-block;
		padding: 0 5px;
		height: 33px;
		line-height: 33px;
		border-radius: 4px;
		text-align: center;
		background: #ff8a00;
		font-size: 12px;
		color: #fff;
		vertical-align: middle;
		text-decoration: none;
		margin-left: 5px;
	}
	
	.btns {
		width: 100%;
		padding-top: 10px;
	}
	
	.btns button {
		display: block;
		margin: 10px 0;
		width: 100%;
		font-size: 18px;
		line-height: 34px;
		text-align: center;
		border-radius: 5px;
	}
	
	.btns button:first-child {
		background: #ffba33;
		border: 1px solid #d8b185;
		color: #fff;
	}
</style>