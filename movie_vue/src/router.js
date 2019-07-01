import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import star from './views/star.vue'
import second from './views/second.vue'

import carousel from './components/carousel.vue'
import SecondPage1 from './components/SecondPage1.vue'
import login from './components/login.vue'



Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:login},
    {path:'/index',component:index},
    {path:'/star',component:star},
    {path:'/second',component:second},
    {path:'/SecondPage1',component:SecondPage1},
    {path:'/carousel',component:carousel},
  ]
})
