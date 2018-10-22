<template>
	<div class="box">
		<div class="header">
			<router-link to="/Home"></router-link>
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
	
	.header a {
		display: block;
		width: 100px;
		height: 30px;
		margin: 20px auto;
		background: url(../assets/logo.png) no-repeat center center;
		background-size: 100px;
	}
</style>