<template>
	<header class="MfwHead ">
		<div class="LBtn">
			<a href="#" class="logo"></a>
		</div>
		<div class="CBtn">
			<input type="text" placeholder="搜索目的地/攻略/游记" />
		</div>
		<div class="RBtn">
			<router-link to="/Normallogin">
				<a href="/Normallogin" class="link">登录</a>
			</router-link>
		</div>
	</header>
</template>

<script>
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	.MfwHead {
		width: 100%;
		border-bottom: 1px solid #e5e5e5;
		display: flex;
		justify-content: flex-start;
	}
	
	.MfwHead .LBtn a {
		display: block;
		width: 105px;
		height: 50px;
		background: url(../assets/logo.png) no-repeat center center;
		background-size: 80px;
	}
	
	.MfwHead .CBtn {
		flex: 1;
	}
	
	.MfwHead .CBtn input {
		height: 50px;
		border: 0;
		width: 220px;
		height: 26px;
		border-radius: 15px;
		margin-top: 12px;
		background: #f3f3f3 url(../assets/search.png) no-repeat 190px center;
		background-size: 18px;
		padding-left: 15px;
		box-sizing: border-box;
	}
	
	.MfwHead .RBtn>a {
		display: block;
		width: 40px;
		height: 50px;
		line-height: 50px;
		font-size: 14px;
		padding: 0 6px;
		box-sizing: border-box;
		text-align: center;
		text-decoration: none;
	}
	
	.MfwHead .RBtn>a a {
		color: #ffa800;
		text-decoration: none;
	}
</style>