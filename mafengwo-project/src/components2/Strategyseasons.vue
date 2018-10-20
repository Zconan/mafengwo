<template>
	<section class="block">
		<a class="item-hd" href="#">
			<h2>当季推荐</h2>
			<p class="dec">每月最适合前往的目的地推荐</p>
		</a>
		<div class="scopebar">
			<div class="scrollview">
				<div class="conbox">
					<router-link :to="a.href" v-for="(a,index) in areas" v-text="a.title" @click.native="changeTab(index)" :class="{cur:page===index}"></router-link>
				</div>
			</div>
		</div>
		<router-view></router-view>
	</section>
</template>

<script>
	
	export default {
		data() {
			return {
				page: 9,
				areas: [{
					title: '1月',
					href: '/strategy/month1'
				}, {
					title: '2月',
					href: '/strategy/month2'
				}, {
					title: '3月',
					href: '/strategy/month3'
				}, {
					title: '4月',
					href: '/strategy/month4'
				}, {
					title: '5月',
					href: '/strategy/month5'
				}, {
					title: '6月',
					href: '/strategy/month6'
				}, {
					title: '7月',
					href: '/strategy/month7'
				}, {
					title: '8月',
					href: '/strategy/month8'
				}, {
					title: '9月',
					href: '/strategy/month9'
				}, {
					title: '10月',
					href: '/strategy/month10'
				}, {
					title: '11月',
					href: '/strategy/month11'
				}, {
					title: '12月',
					href: '/strategy/month12'
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
	
	.block {
		border-bottom: 1px solid #e6e6e6;
	}
	
	.block .item-hd {
		padding: 22px 15px 20px;
		text-align: center;
		display: block;
		border-bottom: 1px solid #ddd;
		text-decoration: none;
	}
	
	.block .item-hd h2 {
		font-size: 20px;
		color: #111;
		line-height: 1em;
		padding-bottom: 8px;
		font-weight: normal;
	}
	
	.block .item-hd .dec {
		color: #999;
		font-size: 14px;
	}
	
	.scopebar .conbox {
		width: 1050px;
	}
	
	.scopebar .scrollview {
		overflow: auto;
		z-index: 1;
	}
	
	.scopebar a {
		float: left;
		height: 45px;
		line-height: 45px;
		font-size: 16px;
		color: #696969;
		padding: 0 19px;
		text-decoration: none;
	}
	
	.scopebar a.cur {
		color: #ff9d00;
		border-bottom: 1px solid #ff9d00;
	}
</style>