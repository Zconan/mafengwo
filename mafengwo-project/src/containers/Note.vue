<template>
	<div>
		<Strategyheader></Strategyheader>
		<Notenav></Notenav>
		<Noteflow></Noteflow>
	</div>
</template>

<script>
	import Strategyheader from '../components2/Strategyheader.vue'
	import Notenav from '../components5/Notenav.vue'
	import Noteflow from '../components5/Noteflow.vue'
	export default {
		components: {
			Notenav,
			Strategyheader,
			Noteflow
		}
	}
</script>

<style>
</style>