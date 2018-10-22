<template>
	<div>
		<Strategyheader></Strategyheader>
		<Strategysearch></Strategysearch>
		<Strategynav></Strategynav>
		<Continents></Continents>
		<Morecities></Morecities>
		<Seasons></Seasons>
		<Morecities></Morecities>
		<Themes></Themes>
		<Morethemes></Morethemes>
	</div>
</template>

<script>
	import Strategyheader from '../components2/Strategyheader.vue'
	import Strategysearch from '../components2/Strategysearch.vue'
	import Strategynav from '../components2/Strategynav.vue'
	import Continents from '../components2/Continents.vue'
	import Seasons from '../components2/Seasons.vue'
	import Themes from '../components2/Themes.vue'
	import Morecities from '../components2/Morecities.vue'
	import Morethemes from '../components2/Morethemes.vue'
	export default {
		components: {
			Strategyheader,
			Strategysearch,
			Strategynav,
			Continents,
			Seasons,
			Themes,
			Morecities,
			Morethemes
		}
	}
</script>

<style>

</style>