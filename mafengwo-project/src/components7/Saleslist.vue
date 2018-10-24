<template>
	<div>
		<h3>大家都在看</h3>
		<ul class="big holiday">
			<li class="t1">旅游度假</li>
			<li class="t2"><a href="#">机酒套餐</a></li>
			<li class="t3">
				<ul>
					<li><a href="#">国内机票</a></li>
					<li><a href="#">订酒店</a></li>
					<li><a href="#">跟团游</a></li>
					<li><a href="#">邮轮</a></li>
				</ul>
			</li>
		</ul>
		<ul class="big poly">
			<li class="t1">当地玩乐</li>
			<li class="t2"><a href="#">一日游</a></li>
			<li class="t3">
				<ul>
					<li><a href="#">多日游</a></li>
					<li><a href="#">景点门票</a></li>
					<li><a href="#">酒店套餐</a></li>
					<li><a href="#">当地体验</a></li>
				</ul>
			</li>
		</ul>
		<ul class="big neccssary">
			<li class="t1">出行必备</li>
			<li class="t2"><a href="#">签证</a></li>
			<li class="t3">
				<ul>
					<li><a href="#">WiFi</a></li>
					<li><a href="#">电话卡</a></li>
					<li><a href="#">接送机</a></li>
					<li><a href="#">交通卡</a></li>
				</ul>
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
	
	h3 {
		height: 46px;
		line-height: 46px;
		text-align: center;
		background: #f7f7f7;
		font-weight: normal;
		font-size: 18px;
		color: #999;
	}
	
	a {
		text-decoration: none;
		color: #fff;
	}
	
	li {
		list-style: none;
	}
	
	p {
		height: 40px;
		line-height: 40px;
		font-size: 18px;
		color: #999;
		text-align: center;
	}
	
	.big {
		display: flex;
		text-align: center;
		color: #fff;
		font-size: 15px;
		margin-bottom: 2px;
	}
	
	.big .t1 {
		flex: 1;
		padding-top: 8px;
	}
	
	.big .t2 {
		height: 98px;
		width: 116px;
		line-height: 96px;
		border-left: 1px solid #fff;
	}
	
	.big .t3 {
		width: 230px;
	}
	
	.big .t3 ul {
		overflow: hidden;
	}
	
	.big .t3 ul li {
		float: left;
		width: 50%;
		border-left: 1px solid #fff;
		border-bottom: 1px solid #fff;
		box-sizing: border-box;
	}
	
	.big .t3 ul li a {
		display: block;
		height: 48px;
		line-height: 48px;
	}
	
	.holiday {
		background: #f91;
	}
	
	.poly {
		background: #12cc90;
	}
	
	.neccssary {
		background: #1fb1e0;
	}
</style>