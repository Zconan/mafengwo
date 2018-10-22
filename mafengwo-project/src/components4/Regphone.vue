<template>
	<div class="box">
		<ul>
			<li>
				<input v-model="phone" name="passport" type="text" placeholder="您的手机号" autocomplete="off" data-type="mobile" value="">
			</li>
		</ul>
		<div class="btns">
			<button @click="checkPhone">注册</button>
			<router-link to="/login" tag="button">登录</router-link>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				phone: ''
			}
		},
		methods: {
			checkPhone: function() {
				//手机号码格式验证
				if(!(/^1[34578]\d{9}$/.test(this.phone))) {
					alert('格式不正确');
					this.phone = '';
				} else if(/^1[34578]\d{9}$/.test(this.phone)) {
					location.href = '#/regsuccess';
				}
				//				else if(/^1[34578]\d{9}$/.test(this.phone)) {
				//					//手机号码是否已注册验证
				//					var self = this;
				//					var statusCode = [200, 304];
				//					var xhr = new XMLHttpRequest();
				//					xhr.onload = function() {
				//						if(statusCode.indexOf(xhr.status) >= 0) {
				//							var res = xhr.responseText;
				//							if(res == 'no') {
				//								alert('该手机号码已注册');
				//								location.href = '#/register';
				//								self.phone = '';
				//							} else if(res == 'yes') {
				//								var self2 = self;
				//								//保存手机号码到数据库
				//								xhr.onload = function() {
				//									if(statusCode.indexOf(xhr.status) >= 0) {
				//										var res2 = xhr.responseText;
				//										if(res2 == 'no') {
				//											alert('注册失败');
				//											location.href = '#/register';
				//											self2.phone = '';
				//										}else if(res2 == 'yes') {
				//											location.href = '#/regsuccess';
				//										}
				//									}
				//								}
				//								xhr.open('get', 'http://localhost:9997/savephone?phone=' + self2.phone, true);
				//								xhr.send();
				//							}
				//						}
				//					}
				//					xhr.open('get', 'http://localhost:9998/checkphone?phone=' + self.phone, true);
				//					xhr.send();
				//				}
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
	
	ul li input {
		height: 43px;
		background: 0;
		border: 0;
		font-size: 16px;
		line-height: 43px;
		width: 100%;
		text-indent: 11px;
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