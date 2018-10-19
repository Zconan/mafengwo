<template>
	<div class="box">
		<ul>
			<li>
				<input v-model="phone" name="passport" type="text" placeholder="您的手机号" autocomplete="off" data-type="mobile" value="">
			</li>
		</ul>
		<div class="btns">
			<router-link to="/regsuccess" tag="button" v-on:click.native="checkPhone">注册</router-link>
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
				if(!(/^1[34578]\d{9}$/.test(this.phone))) {
					alert('格式不正确');
					return false;
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