<template>
	<div class="box">
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