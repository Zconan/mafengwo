<template>
	<div>
		<ul class="tab">
			<li @click="changeTab1()">
				<span :class="{active1:page0}">全部目的地</span>
			</li>
			<li @click="changeTab2()">
				<span :class="{active1:page00}">全部出发时间</span>
			</li>
		</ul>
		<div class="sites" v-if="page0">
			<p>全部目的地<span>2088</span></p>
			<ul class="site">
				<li v-for="(c,idx) in continents" :key="idx" v-text="c" :class="{active2:idx===page1}" @click="changeContinents(idx)"></li>
			</ul>
			<div class="cities">
				<ul v-for="(obj,key,i) in objs" :key="i" v-if="i===page2" class="city">
					 <!--@click="changeCity(x)"-->
					<li v-for="(a,x) in obj" :key="x" v-text="a"></li>
				</ul>
				<!--<div class="areas">
					<ul v-for="(obj2,key2,i2) in objs2" :key="i2" v-if="page2==page3[0]&&i2==page3[1]" class="area">
						<li v-for="(a2,x2) in obj2" :key="x2">{{a2.dd}}<span v-text="a2.num"></span></li>
					</ul>
				</div>-->
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				tabs: ['全部目的地', '全部出发时间'],
				continents: ['境内精选', '东南亚', '日韩', '港澳台', '亚洲精选', '美洲', '欧洲', '大洋洲', '非洲'],
				objs: {
					inland: ['北京', '上海', '重庆', '西藏', '四川', '云南', '安徽', '内蒙古', '青海', '广西', '福建', '海南', '河南', '山东', '山西', '新疆', '陕西', '甘肃', '湖南', '贵州', '江苏', '浙江', '广东', '湖北', '吉林', '辽宁'],
					dny: ['菲律宾', '尼泊尔', '柬埔寨', '泰国', '马来西亚', '缅甸', '越南', '印度尼西', '新加坡', '老挝'],
					rh: ['日本', '韩国'],
					gat: ['香港', '澳门', '台湾'],
					yz: ['马尔代夫', '印度', '以色列', '斯里兰卡', '迪拜', '伊朗'],
					mz: ['美国', '巴西', '加拿大', '墨西哥'],
					oz: ['意大利', '土耳其', '英国', '希腊', '瑞士', '法国', '葡萄牙', '西班牙', '奥地利', '德国', '瑞典'],
					dyz: ['澳大利亚', '新西兰', '斐济', '帕劳'],
					fz: ['肯尼亚', '毛里求斯', '塞舌尔']
				},
//				objs2: {
//					bj: [{
//						dd: '北京',
//						num: 9
//					}],
//					sh: [{
//						dd: '上海',
//						num: 4
//					}],
//					cq: [{
//						dd: '重庆',
//						num: 10
//					}],
//					xz: [{
//						dd: '西藏',
//						num: 104
//					}, {
//						dd: '阿里',
//						num: 16
//					}, {
//						dd: '墨脱',
//						num: 10
//					}, {
//						dd: '纳木错',
//						num: 2
//					}, {
//						dd: '拉萨',
//						num: 46
//					}, {
//						dd: '川藏南线',
//						num: 85
//					}, {
//						dd: '珠穆朗玛峰',
//						num: 4
//					}, {
//						dd: '林芝',
//						num: 26
//					}, {
//						dd: '日喀则',
//						num: 7
//					}, {
//						dd: '山南',
//						num: 6
//					}],
//					sc: [{
//						dd: '四川',
//						num: 148
//					}, {
//						dd: '色达',
//						num: 63
//					}, {
//						dd: '成都',
//						num: 19
//					}, {
//						dd: '稻城',
//						num: 88
//					}, {
//						dd: '亚丁',
//						num: 38
//					}, {
//						dd: '四姑娘山',
//						num: 11
//					}, {
//						dd: '九寨沟',
//						num: 0
//					}, {
//						dd: '峨眉山',
//						num: 1
//					}, {
//						dd: '阿坝',
//						num: 20
//					}, {
//						dd: '牛背山',
//						num: 1
//					}],
//				},
				page0: false,
				page00: false,
				page1: 0,
				page2: 0,
//				page3: [0,0]
			}
		},
		methods: {
			changeTab1() {
				this.page0 = !this.page0;
			},
			changeTab2() {
				this.page00 = !this.page00;
			},
			changeContinents(idx) {
				this.page1 = idx;
				this.page2 = idx;
//				this.page3[0] = idx;
			},
//			changeCity(x) {
//				this.page3[1] = x;
//			}
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
	
	.tab {
		width: 100%;
		display: flex;
		border-bottom: 1px solid #e2e2e2;
	}
	
	.tab li {
		flex: 1;
		margin: 6px 0;
		position: relative;
	}
	
	.tab li:first-child {
		border-right: 1px solid #e2e2e2;
	}
	
	.tab li span {
		display: block;
		height: 30px;
		line-height: 30px;
		text-align: center;
		padding: 0 10px;
		font-size: 15px;
		color: #a4a4a4;
	}
	
	.tab li span.active1 {
		color: #ff9d00;
	}
	
	.tab li span:after {
		content: '';
		position: absolute;
		right: 16px;
		top: 50%;
		margin-top: -9px;
		border-left: 2px solid #ccc;
		border-bottom: 2px solid #ccc;
		width: 9px;
		height: 9px;
		-webkit-transform: rotate(-45deg);
		transform: rotate(-45deg);
		transition: all 0.3s ease-in 0s;
		-webkit-transition: all 0.3s ease-in 0s;
	}
	
	.sites {
		font-size: 14px;
		color: #696969;
		position: relative;
	}
	
	.sites p {
		height: 45px;
		padding: 0 15px;
		line-height: 45px;
		background: #f8f8f8;
		border-bottom: 1px solid #ebebeb;
	}
	
	.sites p span {
		float: right;
		padding: 0 5px;
		color: #ff9d00;
	}
	
	.sites .site,
	.sites .cities .city {
		width: 92px;
		border-right: 1px solid #ebebeb;
	}
	
	.sites .site li,
	.sites .cities .city li,
	.sites .cities .areas .area li {
		height: 45px;
		line-height: 45px;
		padding-left: 15px;
		background: #f8f8f8;
		border-bottom: 1px solid #ebebeb;
	}
	
	.sites .site li.active2 {
		background: #fff;
		border-left: 1px solid #ff9d00;
	}
	
	.sites .cities {
		position: absolute;
		left: 95px;
		top: 46px;
	}
	
	.sites .cities .city {
		width: 82px;
		padding-left: 10px;
		overflow-y: scroll;
		height: 500px;
		position: absolute;
		left: 0;
		top: 0;
	}
	
	.sites .cities .city li,
	.sites .cities .areas .area li {
		background: #fff;
	}
	
	/*.sites .cities .areas {
		position: absolute;
		left: 92px;
		top: 0;
	}
	
	.sites .cities .areas .area {
		padding-left: 10px;
		width: 170px;
		position: absolute;
		left: 0;
		top: 0;
	}
	
	.sites .cities .areas .area li {
		padding-right: 10px;
	}
	
	.sites .cities .areas .area li span {
		float: right;
		color: #ff9d00;
	}*/
</style>