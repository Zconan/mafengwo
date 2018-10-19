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
</style>