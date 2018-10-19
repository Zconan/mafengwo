<template>
	<div class="box">
		<ul>
			<li>
				<input name="mobile" type="text" placeholder="您的手机号" autocomplete="off">
			</li>
			<li>
				<input name="code" type="text" placeholder="验证码" autocomplete="off">
				<div class="code"><img src="/api.php/verifyCode"></div>
			</li>
			<li>
				<input name="smscode" type="text" placeholder="短信验证码" autocomplete="off">
				<div class="getcode">
					<a href="#">免费获取验证码</a>
				</div>
			</li>
		</ul>
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
		bottom: 2px;
		right: 10px;
	}
	
	ul li .code img {
		vertical-align: middle;
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
</style>