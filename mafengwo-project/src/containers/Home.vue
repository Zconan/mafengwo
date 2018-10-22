<template>
	<div>
		<Xheader></Xheader>
		<Xswiper></Xswiper>
		<Xsearch></Xsearch>
		<Xguideflow></Xguideflow>
	</div>
</template>

<script>
	import Xheader from '../components1/Xheader.vue'
	import Xswiper from '../components1/Xswiper.vue'
	import Xsearch from '../components1/Xsearch.vue'
	import Xguideflow from '../components1/Xguideflow.vue'

	export default {
		components: {
			Xheader,
			Xswiper,
			Xsearch,
			Xguideflow
		}
	}
</script>

<style>

</style>