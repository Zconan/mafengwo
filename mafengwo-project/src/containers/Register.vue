<template>
	<div>
		<Loginheader></Loginheader>
		<Loginnav></Loginnav>
		<Regphone></Regphone>
		<Loginfooter></Loginfooter>
	</div>
</template>

<script>
	import Loginheader from '../components3/Loginheader.vue'
	import Loginnav from '../components3/Loginnav.vue'
	import Regphone from '../components4/Regphone.vue'
	import Loginfooter from '../components3/Loginfooter.vue'
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