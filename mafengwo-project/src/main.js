import Vue from 'vue'
import App from './App.vue'

//导入VueRouter，调用 Vue.use(VueRouter)
import VueRouter from 'vue-router'
Vue.use(VueRouter)

Vue.config.productionTip = false

//定义路由组件
import Home from './containers/Home.vue'//首页
import Login from './containers/Login.vue'//登录页
import Register from './containers/Register.vue'//注册页
import Regsuccess from './containers/Regsuccess.vue'//注册页
import Strategy from './containers/Strategy.vue'//找攻略页
import Note from './containers/Note.vue'//看游记页
import Together from './containers/Together.vue'//结伴页
import Sales from './containers/Sales.vue'//旅行商城页(商品列表页)
import Flight from './containers/Flight.vue'//机票页
import Car from './containers/Car.vue'//订单页
import Detiles from './containers/Detiles.vue'//商品详情页
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
}, {
	path: '/note',
	component: Note
}, {
	path: '/car',
	component: Car
}, {
	path: '/flight',
	component: Flight
}, {
	path: '/together',
	component: Together
}, {
	path: '/sales',
	component: Sales
}, {
	path: '/detiles/:id',
	component: Detiles,
	props: true
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