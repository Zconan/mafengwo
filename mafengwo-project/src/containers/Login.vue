<template>
	<div>
		<Loginheader></Loginheader>
		<Loginnav></Loginnav>
		<router-view></router-view>
		<Loginfooter></Loginfooter>
	</div>
</template>

<script>
	import Loginheader from '../components/Loginheader.vue'
	import Loginnav from '../components/Loginnav.vue'
	import Loginfooter from '../components/Loginfooter.vue'
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