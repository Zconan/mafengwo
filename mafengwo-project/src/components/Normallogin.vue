<template>
	<div class="box">
		<ul>
			<li>
				<input name="passport" type="text" placeholder="您的邮箱/手机号" autocomplete="off" value="">
			</li>
			<li>
				<input name="password" type="password" placeholder="您的密码" autocomplete="off" value="">
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
		color: #dadada;
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