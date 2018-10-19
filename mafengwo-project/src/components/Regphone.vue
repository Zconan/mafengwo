<template>
	<div class="box">
		<ul>
			<li>
				<input name="passport" type="text" placeholder="您的手机号" autocomplete="off" data-type="mobile" value="">
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
	
	ul li input {
		height: 43px;
		background: 0;
		border: 0;
		font-size: 16px;
		line-height: 43px;
		width: 100%;
		text-indent: 11px;
	}
</style>