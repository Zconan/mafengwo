<template>
	<div>
		<ul>
			<li></li>
		</ul>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				arrs: []
			}
		},
		methods: {
			getDates() {
				var self = this;
				var statusCode = [200,304];
				var xhr = new XMLHttpRequest();
				xhr.onload = function() {
					if(statusCode.indexOf(xhr.status) >= 0) {
						self.arrs = JSON.parse(xhr.responseText);
					}
				}
				xhr.open('get','http://localhost:9993/togetherdates',true);
				xhr.send();
			}
		},
		mounted() {
			this.getDates();
		}
	}
</script>

<style scoped>
	* {
		margin: 0;
		padding: 0;
	}
	ul li {
		width: 50%;
		height: 208px;
		padding:
	}
</style>