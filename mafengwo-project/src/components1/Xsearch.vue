<template>
	<div class="nav-li">
		<ul>
			<li v-for="(a,index) in arrs">
				<a v-text="a" @click="changeModel(index)"></a>
			</li>
		</ul>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				arrs: ['找攻略', '看游记', '问达人', '结伴', '酒店', '旅行商城', '机票', '当地玩乐']
			}
		},
		methods: {
			changeModel: function(index) {
				switch(index) {
					case 0:
					location.href = '#/strategy';
					break;
					case 1:
					location.href = '#/note';
					break;
					case 2:
					location.href = '#/note';
					break;
					case 3:
					location.href = '#/together';
					break;
					case 5:
					location.href = '#/sales';
					break;
					case 6:
					location.href = '#/flight';
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
	
	.nav-li ul {
		display: flex;
		flex-wrap: wrap;
		margin: 0 auto;
		padding: 12px 7px;
	}
	
	.nav-li ul li {
		list-style: none;
	}
	
	.nav-li ul li a {
		width: 90px;
		height: 92px;
		display: block;
		text-decoration: none;
		text-align: center;
		line-height: 150px;
	}
	
	.nav-li ul li:nth-child(1) a {
		color: #ff9d00;
		background: url(../assets/nav1.png) no-repeat center 10px;
		background-size: 45px;
	}
	
	.nav-li ul li:nth-child(2) a {
		color: #feca2b;
		background: url(../assets/nav5.png) no-repeat center 10px;
		background-size: 45px;
	}
	
	.nav-li ul li:nth-child(3) a {
		color: #42d6ba;
		background: url(../assets/nav7.png) no-repeat center 10px;
		background-size: 45px;
	}
	
	.nav-li ul li:nth-child(4) a {
		color: #f94a87;
		background: url(../assets/nav6.png) no-repeat center 10px;
		background-size: 45px;
	}
	
	.nav-li ul li:nth-child(5) a {
		color: #32a2f1;
		background: url(../assets/nav2.png) no-repeat center 10px;
		background-size: 45px;
	}
	
	.nav-li ul li:nth-child(6) a {
		color: #fd4e4e;
		background: url(../assets/nav3.png) no-repeat center 10px;
		background-size: 45px;
	}
	
	.nav-li ul li:nth-child(7) a {
		color: #acce0e;
		background: url(../assets/nav4.png) no-repeat center 10px;
		background-size: 45px;
	}
	
	.nav-li ul li:nth-child(8) a {
		color: #b160df;
		background: url(../assets/nav8.png) no-repeat center 10px;
		background-size: 45px;
	}
</style>