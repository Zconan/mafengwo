<template>
	<div class="box">
		<div class="nav">
			<router-link v-for="(a,index) in arrs" to="/login/normallogin" tag="div" v-text="a" :class="{active:page===index}" @click.native="changeTab(index)"></router-link>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				page: 0,
				arrs: ['普通登录','短信验证码登录']
			}
		},
		methods: {
			changeTab(index) {
				this.page = index;
				switch(index) {
					case 0:
					location.href= "#/login/normallogin";
					break;
					case 1:
					location.href = '#/login/phonelogin';
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
	
	a {
		text-decoration: none;
		color: #999;
	}
	
	.box {
		padding: 0 9px;
	}
	
	.nav {
		display: flex;
		padding-bottom: 30px;
	}
	
	.nav div {
		flex: 1;
		height: 40px;
		color: #999;
		border-top: 2px solid #dadada;
		font-size: 14px;
		line-height: 42px;
		text-align: center;
		background: #fafafa;
	}
	
	.nav div.active {
		border-top: 2px solid #ffba33;
		background: #fff;
		color: #ffba33;
	}
</style>