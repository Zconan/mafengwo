<template>
	<section class="focus">
		<img src="../assets/strategynav.jpg">
		<a href="#">
			<div class="title">
				<p class="t1">2018香港美食节，看完这篇去吃遍世界美食</p>
			</div>
		</a>
	</section>
</template>

<script>
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	.focus {
		position: relative;
		width: 100%;
		height: 150px;
	}
	
	.focus img {
		width: 100%;
	}
	
	.focus a {
		width: 100%;
		height: 150px;
		position: absolute;
		top: 0;
		left: 0;
	}
	
	.focus .title {
		position: absolute;
		bottom: 0;
		left: 0;
		right: 0;
		background: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.6));
	}
	
	.focus .title .t1 {
		height: 55px;
		line-height: 55px;
		font-size: 18px;
		padding: 0 20px 0 15px;
		color: #fff;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}
</style>