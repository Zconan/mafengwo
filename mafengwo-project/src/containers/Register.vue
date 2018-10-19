<template>
	<div>
		<Loginheader></Loginheader>
		<Loginnav></Loginnav>
		<Regphone></Regphone>
		<Loginfooter></Loginfooter>
	</div>
</template>

<script>
	import Loginheader from '../components/Loginheader.vue'
	import Loginnav from '../components/Loginnav.vue'
	import Regphone from '../components/Regphone.vue'
	import Loginfooter from '../components/Loginfooter.vue'
	export default {
		components: {
			Loginheader,
			Loginnav,
			Regphone,
			Loginfooter
		}
	}
</script>

<style>

</style>