<template>
	<section class="searchbox">
		<form class="frm_query">
			<label class="label"><i></i>搜索目的地</label>
		</form>
	</section>
</template>

<script>
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	.searchbox {
		height: 40px;
	}
	
	.searchbox .frm_query {
		background: #f2f2f2;
		border-radius: 2px;
		width: 345px;
		height: 28px;
		margin: 10px auto;
	}
	
	.searchbox .frm_query .label {
		display: block;
		text-align: center;
		font-size: 12px;
		color: #696969;
		line-height: 28px;
		position: relative;
	}
	
	.searchbox .frm_query .label i {
		position: absolute;
		left: 35%;
		top: 50%;
		margin-top: -6px;
		width: 14px;
		height: 14px;
		background: url(../assets/search.png) no-repeat;
		background-size: 14px;
	}
</style>