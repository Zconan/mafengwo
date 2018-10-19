<template>
	<div>
		<Loginheader></Loginheader>
		<Loginnav></Loginnav>
		<router-view></router-view>
		<Loginlink></Loginlink>
		<Loginbtn></Loginbtn>
		<Loginfooter></Loginfooter>
	</div>
</template>

<script>
	import Loginheader from '../components/Loginheader.vue'
	import Loginnav from '../components/Loginnav.vue'
	import Loginlink from '../components/Loginlink.vue'
	import Loginbtn from '../components/Loginbtn.vue'
	import Loginfooter from '../components/Loginfooter.vue'
	export default {
		components: {
			Loginheader,
			Loginnav,
			Loginlink,
			Loginbtn,
			Loginfooter
		}
	}
</script>

<style>
</style>