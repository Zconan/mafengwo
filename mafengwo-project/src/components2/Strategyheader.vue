<template>
	<header class="head2home">
        <a href="#" class="logo"></a>
        <div class="rBtn">
            <a href="#" class="home">官网首页</a>
            <a href="#" class="sch"></a>
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
	.head2home {
		height: 50px;
		border-bottom: 1px solid #f2f2f2;
	}
	.head2home .logo {
		float: left;
		width: 100px;
		height: 30px;
		padding: 10px;
		background: url(../assets/logo.png) no-repeat 20px center;
		background-size: 100px; 
	}
	.head2home .rBtn {
		float: right;
	}
	.head2home .rBtn .home {
		width: 93px;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-size: 15px;
		color: #ff9d00;
		text-decoration: none;
		float: left;
	}
	.head2home .rBtn .sch {
		width: 50px;
		height: 50px;
		background: url(../assets/strategyheader.png) no-repeat 0 -50px;
		background-size: 100px;
		float: right;
	}
</style>