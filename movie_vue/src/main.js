import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入用npm安装的axios模块
import axios from 'axios'

//引入awesome-swiper
import VueAwesomeSwiper from 'vue-awesome-swiper'
import '../public/css/swiper.css'
Vue.use(VueAwesomeSwiper)

//引入要作为全局组件的对象
import footer from './components/footer.vue'
import myheader from './components/header.vue'
//将footer普通对象，重写封装为全局组件
Vue.component("myFooter",footer);
Vue.component("myHeader",myheader);
Vue.config.productionTip = false

//让axios自动携带cookieid到服务器，为学session做准备
axios.defaults.withCredentials=true;
//4:设置服务器基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/";
//将axios对象放入Vue原型对象中
Vue.prototype.axios=axios;
//结果：所有组件都是Vue.prototype的孩子
//所有：所有组件中都可用this.axios.get()发送ajax请求。
//main.js是整个程序的接口




new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
