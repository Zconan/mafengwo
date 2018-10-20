<template>
	<div>
		<Strategyheader></Strategyheader>
		<Strategysearch></Strategysearch>
		<Strategynav></Strategynav>
		<Continents></Continents>
		<Seasons></Seasons>
	</div>
</template>

<script>
	import Strategyheader from '../components2/Strategyheader.vue'
	import Strategysearch from '../components2/Strategysearch.vue'
	import Strategynav from '../components2/Strategynav.vue'
	import Continents from '../components2/Continents.vue'
	import Seasons from '../components2/Seasons.vue'
	export default {
		components: {
			Strategyheader,
			Strategysearch,
			Strategynav,
			Continents,
			Seasons
		}
	}
</script>

<style>
</style>