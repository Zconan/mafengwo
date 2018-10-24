<template>
	<div>
		<header class="head2home">
			<router-link to="/home" :class="{logo:true}"></router-link>
			<div class="rBtn">
				<router-link to="/car" :class="{home:true}">订单</router-link>
				<a href="#" class="sch"></a>
			</div>
		</header>
		<div class="nav">
			<ul>
				<li @click="changeTab(index)" v-for="(n,index) in navs" :key="index" v-text="n"></li>
			</ul>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				navs: ['首页', '目的地', '游记', '酒店'],
			}
		},
		methods: {
			changeTab(index) {
				switch(index) {
					case 0:
						location.href = '#/home';
						break;
					case 1:
						location.href = '#/strategy';
						break;
					case 2:
						location.href = '#/note';
						break;
					case 3:
						location.href = '#/hotel';
						break;
				}
			}
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	li {
		list-style: none;
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
	
	.nav {
		margin-bottom: 2px;
	}
	
	.nav ul {
		display: flex;
	}
	
	.nav ul li {
		flex: 1;
		height: 43px;
		line-height: 43px;
		border-right: 1px solid #fff;
		color: #fff;
		background: #ff9d00;
		font-size: 14px;
		text-align: center;
	}
</style>