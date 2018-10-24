<template>
	<div>
		<Salesheader></Salesheader>
		<Saleslist></Saleslist>
		<Salesgoods></Salesgoods>
	</div>
</template>

<script>
	import Salesheader from '../components7/Salesheader.vue'
	import Saleslist from '../components7/Saleslist.vue'
	import Salesgoods from '../components7/Salesgoods.vue'
	export default {
		components: {
			Salesheader,
			Saleslist,
			Salesgoods
		}
	}
</script>

<style>
</style>