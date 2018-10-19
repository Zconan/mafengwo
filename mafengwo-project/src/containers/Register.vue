<template>
	<div>
		<Loginheader></Loginheader>
		<Loginnav></Loginnav>
		<Regphone></Regphone>
		<Regbtn></Regbtn>
		<Loginfooter></Loginfooter>
	</div>
</template>

<script>
	import Loginheader from '../components/Loginheader.vue'
	import Loginnav from '../components/Loginnav.vue'
	import Regphone from '../components/Regphone.vue'
	import Regbtn from '../components/Regbtn.vue'
	import Loginfooter from '../components/Loginfooter.vue'
	export default {
		components: {
			Loginheader,
			Loginnav,
			Regphone,
			Regbtn,
			Loginfooter
		}
	}
</script>

<style>

</style>