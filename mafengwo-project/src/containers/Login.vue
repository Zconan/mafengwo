<template>
	<div>
		<Loginheader></Loginheader>
		<Loginnav></Loginnav>
		<router-view></router-view>
		<Loginfooter></Loginfooter>
	</div>
</template>

<script>
	import Loginheader from '../components3/Loginheader.vue'
	import Loginnav from '../components3/Loginnav.vue'
	import Loginfooter from '../components3/Loginfooter.vue'
	export default {
		components: {
			Loginheader,
			Loginnav,
			Loginfooter
		}
	}
</script>

<style>
</style>