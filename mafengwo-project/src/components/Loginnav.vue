<template>
	<div class="box">
		<div class="nav">
			<router-link to="/login/normallogin" tag="div" v-text="arrs[0].title" :class="{active:page===arrs[0].idx}" @click="changeTab(arrs[0].idx)"></router-link>
			<router-link to="/login/phonelogin" tag="div" v-text="arrs[1].title" :class="{active:page===arrs[1].idx}" @click="changeTab(arrs[1].idx)"></router-link>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				page: 0,
				arrs: [{
					title: '普通登录',
					idx: 0
				}, {
					title: '短信验证码登录',
					idx: 1
				}]
			}
		},
		methods: {
			changeTab(index) {
				this.page = index;
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