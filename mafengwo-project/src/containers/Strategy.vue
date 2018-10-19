<template>
	<div>
		<Strategyheader></Strategyheader>
		<Strategysearch></Strategysearch>
		<Strategynav></Strategynav>
	</div>
</template>

<script>
	import Strategyheader from '../components2/Strategyheader.vue'
	import Strategysearch from '../components2/Strategysearch.vue'
	import Strategynav from '../components2/Strategynav.vue'
	export default {
		components: {
			Strategyheader,
			Strategysearch,
			Strategynav
		}
	}
</script>

<style>
</style>