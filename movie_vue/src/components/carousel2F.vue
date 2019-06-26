<template>
  <!-- swiper -->
  <section class="container">
    <div class="mod-hd">
      <h2>
        <a href="#" class="mod-title">最新大片</a>
      </h2>
      <a href="#" class="more">更多最新大片</a>
    </div>
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
              <img src="img/index/2F_carsuo2.jpg" alt>
              <h3>暮光巴黎</h3>
              <i class="score">
                <b>5</b>.1
              </i>
              <p>魔幻爱情巨制</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="img/index/2F_carsuo3.jpg" alt>
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
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="img/index/2F_carsuo9.jpg" alt>
              <h3>姽婳</h3>
              <i class="score">
                <b>7</b>.0
              </i>
              <p>恶灵画像见者必死</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="img/index/2F_carsuo10.jpg" alt>
              <h3>河间圣手</h3>
              <i class="score">
                <b>7</b>.1
              </i>
              <p>名医卷入宫廷阴谋</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="img/index/2F_carsuo11.jpg" alt>
              <h3>疯狂这一年</h3>
              <i class="score">
                <b>7</b>.0
              </i>
              <p>重温父爱嬉笑暖心</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="img/index/2F_carsuo12.jpg" alt>
              <h3>谜巢</h3>
              <i class="score">
                <b>7</b>.0
              </i>
              <p>李冰冰古墓寻吴尊</p>
            </a>
          </div> -->
        </div>
      </swiper-slide>
      <div class="swiper-button-prev" slot="button-prev"></div>
      <div class="swiper-button-next" slot="button-next"></div>
    </swiper>
  </section>
</template>


<script>
export default {
  data() {
    return {
      swiperOption: {
        slidesPerView: 1,
        spaceBetween: 0,
        //loop: true,
        autoplay: {
          //delay:1000,设置图片切换时间
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        }
      },
      list1: [],
      list2: []
    };
  },
  // 过滤器
  filters: {
    code1(code) {
      return Math.floor(code);
    },
    code2(code) {
      return (code * 10) % 10;
    }
  },
  // 组件创建成功
  created() {
    var url = "card2";
    this.axios.get(url).then(result => {
      this.list1 = [];
      this.list1 = result.data.slice(0, 6);
      //console.log(this.list1);
      this.list2 = result.data.slice(6);
      //console.log(this.list2);
    });
  }
};
</script>

<style scoped>
.swiper-container > .swiper-wrapper > .swiper-slide > img {
  width: 1000px;
}
/* 设置轮播适配图片宽度 */
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

/* 二楼父元素定宽 */
.container {
  width: 1000px;
  margin: 0 auto;
  margin-top:3rem; 
}
/* 左标题样式 */
.mod-title {
  
  color: #609fbf;
  text-decoration: none;
}
.mod-hd h2 {
  float: left;
  font-size: 24px;
  line-height: 26px;
  height: 28px;
  font-weight: normal;
  margin-right: 15px;
}
/* 右标题样式 */
.mod-hd .more {
  margin-top: 5px;
  font-size: 14px;
  float: right;
  margin-bottom: 24px;
  text-decoration: none;
}
.more {
  color: #747474;
}
.more:hover {
  color: #609fbf;
}

/* 2F楼层 */
* {
  margin: 0;
  padding: 0;
}
/* 解决高度坍塌 */
.mod-hd::after {
  content: "";
  display: block;
  clear: both;
}
/* 解决高度溢出 */
.mod-hd::before {
  content: "";
  display: table;
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
  margin-left: -8px;
}
.pic-pack-outer h3 {
  color: #333;
  font-size: 14px;
  font-weight: normal;
  margin-top: 7px;
  margin-bottom: 6px;
  text-align: left;
  margin-left: 4px;
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
  left: -37px;
}
.father {
  display: flex;
  justify-content: space-around;
}
.swiper-button-prev,
.swiper-button-next {
  position: absolute;
  top: 36%;
  width: 27px;
  height: 30px;
}
</style>
