<template>
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide" v-for="(a,index) in arrs" :key="index">
				<img :src="a" alt="" />
			</div>
		</div>
		<div class="swiper-pagination"></div>
	</div>
</template>

<script>
	import Swiper from 'swiper'
	import '../../node_modules/swiper/dist/css/swiper.css'
	export default {
		data() {
			return {
				arrs: [require('../assets/pic1.jpg'),require('../assets/pic2.jpg'),require('../assets/pic3.jpg')]
			}
		},
		mounted() {
			var swiper = new Swiper('.swiper-container', {
				spaceBetween: 30,
				centeredSlides: true,
				autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				},
				pagination: {
					el: '.swiper-pagination',
					clickable: true,
				}
			});
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	
	.swiper-container .swiper-slide img {
		width: 100%;
		height: 211px;
	}
</style>