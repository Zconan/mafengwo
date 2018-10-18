<template>
	<div>
		<Xheader></Xheader>
		<Xswiper></Xswiper>
		<Xsearch></Xsearch>
		<Xguideflow></Xguideflow>
	</div>
</template>

<script>
	import Xheader from '../components/Xheader.vue'
	import Xswiper from '../components/Xswiper.vue'
	import Xsearch from '../components/Xsearch.vue'
	import Xguideflow from '../components/Xguideflow.vue'

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