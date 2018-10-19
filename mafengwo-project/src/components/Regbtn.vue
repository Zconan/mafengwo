<template>
	<div class="box">
		<div class="btns">
			<router-link to="/regsuccess" tag="button">注册</router-link>
			<router-link to="/login" tag="button">登录</router-link>
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