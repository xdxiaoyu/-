<template>
<div>
  <myHeader></myHeader>
  <div class="container">
    <section id="mod">
      <div class="pic-rule-left f1" @click="mou">
        <a href="#" class="c-btn a1" :class="x?'active':''">本周</a>
        <a href="#" class="c-btn a2" :class="y?'active':''">上周</a>
        <a href="#" class="c-btn a3" :class="z?'active':''">全部</a>
      </div>
      <div class="pic-search-left f1">
        <input type="month" name="mym" value="2019-03">
        <input type="month" name="mym" value="2019-06">
        <button id="dataButton">搜索</button>
      </div>
      <!-- 第一栏内容 -->
    </section>
    <div class="mod-hd-spec">
      <div class="mod-data">星期一 (06月03日)</div>
    </div>
    <section class="father">
      <swiper :options="swiperOption" class="myswiper">
        <swiper-slide>
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list1" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_2.jpg" alt>
                <h3>味之道</h3>
                <i class="score">
                  <b>6</b>.7
                </i>
                <p>小混混成一代大厨</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_3.jpg" alt>
                <h3>擒贼先擒王</h3>
                <i class="score">
                  <b>7</b>.0
                </i>
                <p>警匪对决斗志斗勇</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo4.jpg" alt>
                <h3>天籁梦想</h3>
                <i class="score">
                  <b>7</b>.1
                </i>
                <p>藏族盲童为梦前行</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo5.jpg" alt>
                <h3>青年马克思</h3>
                <i class="score">
                  <b>8</b>.7
                </i>
                <p>致敬伟大的思想家</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo6.jpg" alt>
                <h3>杀破狼.贪狼</h3>
                <i class="score">
                  <b>7</b>.3
                </i>
                <p>古天乐深陷案中案</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <swiper-slide>
          <!--第二张图片显示内容-->
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list2" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo8.jpg" alt>
                <h3>无问西东</h3>
                <i class="score">
                  <b>8</b>.1
                </i>
                <p>坎坷青春人生史诗</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <div class="swiper-button-prev" slot="button-prev"></div>
        <div class="swiper-button-next" slot="button-next"></div>
      </swiper>
    </section>
    <!-- 第二栏内容 -->
    <div class="mod-hd-spec">
      <div class="mod-data">星期一 (06月04日)</div>
    </div>
    <section class="father">
      <swiper :options="swiperOption" class="myswiper">
        <swiper-slide>
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list1" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_two2.jpg" alt>
                <h3>一村之长之贵妇还</h3>
                <i class="score">
                  <b>6</b>.0
                </i>
                <p>石榴姐整蛊潘长江</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_two3.jpg" alt>
                <h3>擒贼先擒王</h3>
                <i class="score">
                  <b>7</b>.0
                </i>
                <p>警匪对决斗志斗勇</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo4.jpg" alt>
                <h3>天籁梦想</h3>
                <i class="score">
                  <b>7</b>.1
                </i>
                <p>藏族盲童为梦前行</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo5.jpg" alt>
                <h3>青年马克思</h3>
                <i class="score">
                  <b>8</b>.7
                </i>
                <p>致敬伟大的思想家</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo6.jpg" alt>
                <h3>杀破狼.贪狼</h3>
                <i class="score">
                  <b>7</b>.3
                </i>
                <p>古天乐深陷案中案</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <swiper-slide>
          <!--第二张图片显示内容-->
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list2" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo8.jpg" alt>
                <h3>无问西东</h3>
                <i class="score">
                  <b>8</b>.1
                </i>
                <p>坎坷青春人生史诗</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <div class="swiper-button-prev" slot="button-prev"></div>
        <div class="swiper-button-next" slot="button-next"></div>
      </swiper>
    </section>
    <!-- 第三栏内容 -->
    <div class="mod-hd-spec">
      <div class="mod-data ">星期一 (06月05日)</div>
    </div>
    <section class="father">
      <swiper :options="swiperOption" class="myswiper">
        <swiper-slide>
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list1" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_three2.jpg" alt>
                <h3>家有嫂娘</h3>
                <i class="score">
                  <b>6</b>.7
                </i>
                <p>爱恨情仇弘扬真爱</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_three3.jpg" alt>
                <h3>妈妈咪鸭</h3>
                <i class="score">
                  <b>6</b>.9
                </i>
                <p>“小黄鸭”大电影</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo4.jpg" alt>
                <h3>天籁梦想</h3>
                <i class="score">
                  <b>7</b>.1
                </i>
                <p>藏族盲童为梦前行</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo5.jpg" alt>
                <h3>青年马克思</h3>
                <i class="score">
                  <b>8</b>.7
                </i>
                <p>致敬伟大的思想家</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo6.jpg" alt>
                <h3>杀破狼.贪狼</h3>
                <i class="score">
                  <b>7</b>.3
                </i>
                <p>古天乐深陷案中案</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <swiper-slide>
          <!--第二张图片显示内容-->
          <div class="father">
           <div class="carsuoF2" v-for="(item,index) of list2" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo8.jpg" alt>
                <h3>无问西东</h3>
                <i class="score">
                  <b>8</b>.1
                </i>
                <p>坎坷青春人生史诗</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <div class="swiper-button-prev" slot="button-prev"></div>
        <div class="swiper-button-next" slot="button-next"></div>
      </swiper>
    </section>
    <!-- 第四栏内容 -->
    <div class="mod-hd-spec">
      <div class="mod-data mod-act">星期一 (06月06日)</div>
    </div>
    <section class="father">
      <swiper :options="swiperOption" class="myswiper">
        <swiper-slide>
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list1" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_four2.jpg" alt>
                <h3>七儿娘</h3>
                <i class="score">
                  <b>6</b>.7
                </i>
                <p>寻子之路感人至深</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_four3.jpg" alt>
                <h3>呦呦鹿鸣</h3>
                <i class="score">
                  <b>8</b>.2
                </i>
                <p>女画家和退伍军人</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo4.jpg" alt>
                <h3>天籁梦想</h3>
                <i class="score">
                  <b>7</b>.1
                </i>
                <p>藏族盲童为梦前行</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo5.jpg" alt>
                <h3>青年马克思</h3>
                <i class="score">
                  <b>8</b>.7
                </i>
                <p>致敬伟大的思想家</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo6.jpg" alt>
                <h3>杀破狼.贪狼</h3>
                <i class="score">
                  <b>7</b>.3
                </i>
                <p>古天乐深陷案中案</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <swiper-slide>
          <!--第二张图片显示内容-->
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list2" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo8.jpg" alt>
                <h3>无问西东</h3>
                <i class="score">
                  <b>8</b>.1
                </i>
                <p>坎坷青春人生史诗</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <div class="swiper-button-prev" slot="button-prev"></div>
        <div class="swiper-button-next" slot="button-next"></div>
      </swiper>
    </section>
    <!-- 第五栏内容 -->
    <div class="mod-hd-spec">
      <div class="mod-data">星期一 (06月07日)</div>
    </div>
    <section class="father">
      <swiper :options="swiperOption" class="myswiper">
        <swiper-slide>
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list1" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_five2.jpg" alt>
                <h3>警花火龙驹</h3>
                <i class="score">
                  <b>6</b>.7
                </i>
                <p>女警花霍彧成长</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="../../public/img/movie_page2/thumb_five3.jpg" alt>
                <h3>一村之长之参花怒</h3>
                <i class="score">
                  <b>6</b>.7
                </i>
                <p>人参问题急坏村长</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo4.jpg" alt>
                <h3>天籁梦想</h3>
                <i class="score">
                  <b>7</b>.1
                </i>
                <p>藏族盲童为梦前行</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo5.jpg" alt>
                <h3>青年马克思</h3>
                <i class="score">
                  <b>8</b>.7
                </i>
                <p>致敬伟大的思想家</p>
              </a>
            </div>
            <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo6.jpg" alt>
                <h3>杀破狼.贪狼</h3>
                <i class="score">
                  <b>7</b>.3
                </i>
                <p>古天乐深陷案中案</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <swiper-slide>
          <!--第二张图片显示内容-->
          <div class="father">
            <div class="carsuoF2" v-for="(item,index) of list2" :key="index">
              <a href="#" class="pic-pack-outer">
                <img :src="item.mimgurl" alt>
                <h3>{{item.mname}}</h3>
                <i class="score">
                  <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
                </i>
                <p>{{item.mcontent}}</p>
              </a>
            </div>
            <!-- <div class="carsuoF2">
              <a href="#" class="pic-pack-outer">
                <img src="img/index/2F_carsuo8.jpg" alt>
                <h3>无问西东</h3>
                <i class="score">
                  <b>8</b>.1
                </i>
                <p>坎坷青春人生史诗</p>
              </a>
            </div> -->
          </div>
        </swiper-slide>
        <div class="swiper-button-prev" slot="button-prev"></div>
        <div class="swiper-button-next" slot="button-next"></div>
      </swiper>
    </section>
    <!-- 第六栏 -->
    <div class="mod-hd-spec">
      <div class="mod-data">星期一 (06月08日)</div>
    </div>
    <!-- 第七栏 -->
    <div class="mod-hd-spec">
      <div class="mod-data">星期一 (06月09日)</div>
    </div>
    <!-- 友情链接 -->
    <section>
        <div class="mod-href">
            <h2>友情链接</h2>
        </div>
        <div class="mod-href-dh1">
            <a href="#">情圣</a>
            <a href="#">血战钢锯岭</a>
            <a href="#">摆渡人</a>
            <a href="#">长城</a>
        </div>
    </section>
    <!-- 最底部导航 -->
    <section>
        <div class="rank">
            <p class="p1 px">热门频道</p>
            <p class="p2 px">特色推荐</p>
            <p class="p3 px">软件下载</p>
            <p class="p4 px">服务</p>
        </div>
        <div class="mod-href-dh2">
            
            <ul class="ul-dh2">
                <li> <a href="#"> 电影资料</a></li>
                <li> <a href="#"> 焦点明星</a></li>
                <li> <a href="#"> 票房播报</a></li>
                <li> <a href="#"> 劲爆看点</a></li>
                <li> <a href="#"> 看大片  </a></li>
                <li> <a href="#"> 精彩预告</a></li>
                <li> <a href="#"> 最新资讯</a></li>
                <li> <a href="#"> 佳片发现</a></li>
                <li> <a href="#"> 电影节  </a></li>
                <li> <a href="#"> VIP影院 </a></li>
            </ul>
            <ul class="ul2-dh">
                <li><a href="#">游戏</a></li>
            </ul>
            <ul class="ul3-dh">
                <li><a href="#">1905手机APP</a></li>
            </ul>
            <ul class="ul4-dh">
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
    </section>



    <div class="ceshi">

    </div>
  </div>
</div>
  
</template>

<script>
export default {
  data() {
    return {
      x: true,
      y: false,
      z: false,
      swiperOption: {
        slidesPerView: 1,
        spaceBetween: 0,
        //loop: true,
        // autoplay: {
        //   //delay:1000,设置图片切换时间
        // },
        pagination: {
          el: ".swiper-pagination",
          clickable: true
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        }
      },
      list1:[],
      list2:[],
    };
  },
  // 过滤器
  filters:{
    code1(code){
      return Math.floor(code);
    },
    code2(code){
      return (code*10)%10;
    }
  },
  // 组件创建成功发送ajax请求
  created(){
    var url="page2";
    this.axios.get(url).then(result=>{
      this.list1=[];
      this.list1=result.data.slice(0,6);
      //console.log(this.list1);
      this.list2=result.data.slice(6)
      //console.log(this.list2);
    })
  },
  methods: {
    mou(e) {
      e.preventDefault();
      var a = e.target.innerHTML;
      if (a == "本周") {
        this.x = true;
        this.y = false;
        this.z = false;
      } else if (a == "上周") {
        this.y = true;
        this.x = false;
        this.z = false;
      } else if (a == "全部") {
        this.z = true;
        this.x = false;
        this.y = false;
      }
    }
  }
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
/* 主体父元素固定宽度 */
.container {
  width: 1000px;
  margin: 0 auto;
}
/* 调试 */
#mod {
  margin-top: 20px;
}
#mod::after {
  content: "";
  display: block;
  clear: both;
}
.pic-rule-left {
  width: 270px;
  height: 28px;
}
/* 所有a去下划线 */
.f1 {
  float: left;
}
a {
  text-decoration: none;
  outline: none;
}
.c-btn {
  width: 75px;
  height: 28px;
  background-color: #efefef;
  margin-right: 10px;
  display: inline-block !important;
  text-align: center;
  line-height: 28px;
  color: #737373;
  /* float: left; */
}
.active {
  background-color: #609fbf;
  color: #fff;
}
#mod > .pic-rule-left > a:hover {
  background-color: #609fbf;
  color: #fff;
  transition: all 0.2s linear;
}
/* 不同浏览器自动文本框样式 */
input[type="date"],
input[type="time"],
input[type="datetime-local"],
input[type="month"] {
  -webkit-appearance: textarea;
}
/* 按钮样式 */
#dataButton {
  height: 30px;
  width: 55px;
  text-align: center;
  font: 14px/28px "Microsoft Yahei";
  border: none;
  outline: none;
  color: #fff;
  background-color: #609fbf;
  top: -1px;
  right: -1px;
}
/* 日期导航条样式 */
.mod-hd-spec {
  margin-top: 20px;
  margin-bottom: 10px;
  height: 22px;
  overflow: hidden;
  background-color: #efefef;
  width: 1000px;
}
.mod-data {
  color: #fff;
  background-color: #949494;
  font: 12px/22px "Microsoft Yahei";
  text-align: center;
  height: 22px;
  overflow: hidden;
  width: 150px;
}

.myswiper {
  width: 1000px;
}
/* 设置左右箭头颜色 */
.swiper-button-next {
  background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L5%2C44l-4.2-4.2L18.6%2C22L0.8%2C4.2L5%2C0z'%20fill%3D'%23999999'%2F%3E%3C%2Fsvg%3E");
}

.swiper-button-prev {
  background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l4.2%2C4.2L8.4%2C22l17.8%2C17.8L22%2C44L0%2C22z'%20fill%3D'%23999999'%2F%3E%3C%2Fsvg%3E");
  /* %23后面六位代表颜色值 */
}
.carsuoF2 {
  width: 150px;
  /* margin-right: 24px; */
}
/* 第一个图片文字样式 */
.pic-pack-outer {
  text-decoration: none;
  outline: none;
  position: relative;
  display: block;
  margin-bottom: 20px;
  zoom: 1;
  height: 100%;
  overflow: hidden;
}
.pic-pack-outer h3 {
  color: #333;
  font-size: 14px;
  font-weight: normal;
  margin-top: 7px;
  margin-bottom: 6px;
  text-align: left;
  margin-left: 7px;
}
/* 鼠标经过颜色变化 */
.pic-pack-outer h3:hover {
  color: #609fbf;
}
.score {
  float: left;
  position: relative;
  left: 119px;
  top: -24px;
  color: #e6685b;
}
.pic-pack-outer p {
  position: relative;
  font-size: 12px;
  color: #949494;
  left: -32px;
}
.father {
  display: flex;
}
.swiper-button-prev,
.swiper-button-next {
  position: absolute;
  top: 40%;
  width: 27px;
  height: 30px;
}
.carsuoF2 ~ .carsuoF2 {
  margin-left: 20px;
}
.mod-act{
    background-color: #fa7901;
}
/* 友情链接样式 */
.mod-href>h2{
    color: #609fbf;
    text-align: left;
    font-size: 24px;
    line-height: 26px;
    height: 28px;
    font-weight: normal;
    margin-right: 15px;
    margin-top: 18px;
}
.mod-href-dh1{
        background: #f9f9f9;
    height: 100%;
    line-height: 30px;
    padding: 10px 0;
    margin: 20px 0px;
    font-size: 14px;
    text-indent: 5px;
}
.mod-href-dh1::after{
    content: "";
    clear: both;
    display: block;
}
.mod-href-dh1>a{
    color: #333;
    font-size: 14px;
    float: left;
    margin-right: 144px;
    margin-left: 12px;
}
.mod-href-dh1>a:hover{
    color: #609fbf;
}
/*  最底部导航  */
.mod-href-dh2{
    width: 852px;
    font-family: "宋体";
    background: #f9f9f9;
    display: flex;
    padding: 9px;
}
.ul-dh2{
    width: 315px;
    list-style: none;
    display: flex;
}
.ul-dh2>li>a{
    font-size: 12px;
    display: block;
    color: #333;
    margin-right: 6px;
}
.rank{
    width:852px; 
    background-color:  #f9f9f9;
    padding: 9px;
}
.rank::after{
    content: "";
    clear: both;
    display: block;
}
.px{
    float: left;
    color: #6c6c6c;
    font: normal 16px/28px "微软雅黑";
    margin-bottom: 6px;
}
.p1{
    margin-left:12px; 
}
.ul2-dh{
    width: 128px;
    list-style: none;
}
.ul2-dh>li>a{
    font-size: 12px;
    display: block;
    color: #333;
    margin-left: 74px;
}
.p2{
    margin-left:327px; 
}
.ul3-dh{
    width: 163;
    list-style: none;
}
.ul3-dh>li>a{
    font-size: 12px;
    display: block;
    color: #333;
    margin-left:115px; 
}
.p3{
    margin-left:92px; 
}
.p4{
    margin-left:100px; 
}
.ul4-dh{
    display: flex;
    list-style: none;
}
.ul4-dh>li>a{
    font-size: 12px;
    display: block;
    color: #333;
    margin-left: 98px;
}
.ceshi{
    height: 500px;
}
</style>
