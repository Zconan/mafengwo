import Vue from 'vue'
import App from './App.vue'

//导入VueRouter，调用 Vue.use(VueRouter)
import VueRouter from 'vue-router'
Vue.use(VueRouter)

Vue.config.productionTip = false

//定义路由组件
import Home from './containers/Home.vue'
import Login from './containers/Login.vue'
import Register from './containers/Register.vue'
import Regsuccess from './containers/Regsuccess.vue'
import Strategy from './containers/Strategy.vue'
import Normallogin from './components3/Normallogin.vue'
import Phonelogin from './components3/Phonelogin.vue'

//定义路由
const routes = [{
	path: '/',
	redirect: '/home' //重定向redirect，页面刷新就会跳转/home
}, {
	path: '/home',
	component: Home
}, {
	path: '/login',
	component: Login,
	children: [{
		path: '',
		component: Normallogin
	}, {
		path: 'normallogin',
		component: Normallogin
	}, {
		path: 'phonelogin',
		component: Phonelogin
	}]
}, {
	path: '/register',
	component: Register
}, {
	path: '/regsuccess',
	component: Regsuccess
}, {
	path: '/strategy',
	component: Strategy
}]

//创建router实例，配置router
const router = new VueRouter({
	routes
})

new Vue({
	//创建和挂载根实例，通过 router配置参数注入路由，从而让整个应用都有路由功能
	router,
	render: h => h(App)
}).$mount('#app')