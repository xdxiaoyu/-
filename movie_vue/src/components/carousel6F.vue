<template>
  <div>
    <div class="tab">
      <p>汇聚国内一线明星</p>
      <h3>明星影院</h3>
    </div>
    <swiper :options="swiperOption" class="myswiper6">
      <!-- 第一个图片内容 -->
      <swiper-slide>
        <div class="father">
          <div class="mod" @click="scpage">
            <a href="#">
              <img :src="list[0][0].mimgurl?'http://127.0.0.1:3000/'+list[0][0].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo1.jpg'" alt>
              <!-- <img :src="list[0][0].mimgurl" alt=""> -->
            </a>
            <div class="pack-info-star">
              <i class="score">
                <b>{{list[0][0].mcode}}</b>.0
              </i>
              <h3>{{list[0][0].mname}}</h3>
            </div>
          </div>
          <div class="mod2">
            <h2>
              <a href="#" class="title">第四届成龙电影周落下帷幕《天下大同》唱出爱的世界</a>
            </h2>
            <p class="intro">第四届成龙国际动作电影周闭幕式7月22日晚，在山西大同古城永泰门举行。 11项钢铁人动作类荣誉颁发。 随着成龙的一曲《天下大同》，...</p>
            <div class="new-list">

              <a href="#"> &nbsp;&nbsp; 1. &nbsp;《新少林寺》2011</a>

              <a href="#"> &nbsp;&nbsp; 2. &nbsp;《功夫之王》2008</a>

              <a href="#"> &nbsp;&nbsp; 3. &nbsp;《新警察故事》2004</a>

              <a href="#"> &nbsp;&nbsp; 4. &nbsp;《寻找成龙》2009</a>
            </div>
          </div>
          <div class="carsuoF2" >
            <a href="#" class="pic-pack-outer">
              <img :src="list[0][1].mimgurl?'http://127.0.0.1:3000/'+list[0][1].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo2.jpg'" alt>
              <h3>{{list[0][1].mname}}</h3>
              <i class="score1">
                <b>{{list[0][1].mcode|code1}}</b>.{{list[0][1].mcode|code2}}
              </i>
              <p>{{list[0][1].mcontent}}</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img :src="list[0][2].mimgurl?'http://127.0.0.1:3000/'+list[0][2].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo2.jpg'" alt>
              <h3>{{list[0][2].mname}}</h3>
              <i class="score1">
                <b>{{list[0][2].mcode|code1}}</b>.{{list[0][2].mcode|code2}}
              </i>
              <p>{{list[0][2].mcontent}}</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img :src="list[0][3].mimgurl?'http://127.0.0.1:3000/'+list[0][3].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo2.jpg'" alt>
              <h3>{{list[0][3].mname}}</h3>
              <i class="score1">
                <b>{{list[0][3].mcode|code1}}</b>.{{list[0][3].mcode|code2}}
              </i>
              <p>{{list[0][3].mcontent}}</p>
            </a>
          </div>
        </div>
      </swiper-slide>
      <!-- 第二个图片内容 -->
      <swiper-slide>
        <div class="father">
          <div class="mod">
            <a href="#">
              <img :src="list[1][0].mimgurl?'http://127.0.0.1:3000/'+list[1][0].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo5.jpg'" alt>
            </a>
            <div class="pack-info-star">
              <i class="score">
                <b>{{list[1][0].mcode}}</b>.0
              </i>
              <h3>{{list[1][0].mname}}</h3>
            </div>
          </div>
          <div class="mod2">
            <h2>
              <a href="#" class="title">巩俐30年前旧照曝光 青涩甜美气质出众</a>
            </h2>
            <p class="intro">近日，网上曝光了一组巩俐30年前的旧照，照片中的她清纯甜美，气质出众。30年前，年仅22岁的巩俐首次参与到#张艺谋# 导演的电影#红高粱# ...</p>
            <div class="new-list">

              <a href="#"> &nbsp;&nbsp; 1. &nbsp;《红高粱》 1988</a>

              <a href="#"> &nbsp;&nbsp; 2. &nbsp;《归来》2014</a>

              <a href="#"> &nbsp;&nbsp; 3. &nbsp;《梦醒时分》1993</a>

              <a href="#"> &nbsp;&nbsp; 4. &nbsp;《代号美洲豹》1989</a>
            </div>
          </div>
          <div class="carsuoF2_2">
          </div>
        </div>
      </swiper-slide>
      <!-- 第三个图片内容 -->
      <swiper-slide>
        <div class="father">
          <div class="mod">
            <a href="#">
              <img :src="list[2][0].mimgurl?'http://127.0.0.1:3000/'+list[2][0].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo5.jpg'" alt>
            </a>
            <div class="pack-info-star">
              <i class="score">
                <b>{{list[2][0].mcode}}</b>.0
              </i>
              <h3>{{list[2][0].mname}}</h3>
            </div>
          </div>
          <div class="mod2">
            <h2>
              <a href="#" class="title">不爱伊能静？秦昊回应质疑：真人秀“坑爹”</a>
            </h2>
            <p class="intro">秦昊、伊能静电影《这位壮士》前天在京举行发布会，主演秦昊、谢楠、文松等出席。秦昊坦言，《这位壮士》是自己当了爸爸后赚的第一笔...</p>
            <div class="new-list">

              <a href="#"> &nbsp;&nbsp; 1. &nbsp;《怒放之青春再见》 2013</a>

              <a href="#"> &nbsp;&nbsp; 2. &nbsp;《长江图》2016</a>

              <a href="#"> &nbsp;&nbsp; 3. &nbsp;《初到冬京》2012</a>

              <a href="#"> &nbsp;&nbsp; 4. &nbsp;《摇滚英雄》2015</a>
            </div>
          </div>
          <div class="carsuoF2" v-for="(item,index) of arr1" :key="index">
            <a href="#" class="pic-pack-outer">
              <img :src="item.mimgurl?'http://127.0.0.1:3000/'+item.mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo5.jpg'" alt>
              <h3>{{item.mname}}</h3>
              <i class="score1">
                <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
              </i>
              <p>{{item.mcontent}}</p>
            </a>
          </div>
          <!-- <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="../../public/img/index/6F_carsuo8.jpg" alt>
              <h3>金珠玛米</h3>
              <i class="score1">
                <b>7</b>.1
              </i>
              <p>天高地阔好恶由心</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="../../public/img/index/6F_carsuo9.jpg" alt>
              <h3>金珠玛米</h3>
              <i class="score1">
                <b>7</b>.1
              </i>
              <p>天高地阔好恶由心</p>
            </a>
          </div> -->
        </div>
      </swiper-slide>
      <!-- 第四个图片内容 -->
      <swiper-slide>
        <div class="father">
          <div class="mod">
            <a href="#">
              <img :src="list[3][0].mimgurl?'http://127.0.0.1:3000/'+list[3][0].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo5.jpg'" alt>
            </a>
            <div class="pack-info-star">
              <i class="score">
                <b>{{list[3][0].mcode}}</b>.0
              </i>
              <h3>{{list[3][0].mname}}</h3>
            </div>
          </div>
          <div class="mod2">
            <h2>
              <a href="#" class="title">老公曹郁荣获金像最佳摄影奖 姚晨火速发文祝贺</a>
            </h2>
            <p class="intro">4月9日晚，第36届香港电影金像奖颁奖典礼举行。在当晚的颁奖中，鲍德熹和曹郁凭借电影《摆渡人》斩获最佳摄影奖。</p>
            <div class="new-list">

              <a href="#"> &nbsp;&nbsp; 1. &nbsp;《命运呼叫转移》2007</a>

              <a href="#"> &nbsp;&nbsp; 2. &nbsp;《追爱总动员》2007</a>

              <a href="#"> &nbsp;&nbsp; 3. &nbsp;《非常幸运》2013</a>

              <a href="#"> &nbsp;&nbsp; 4. &nbsp;《非常完美》2009</a>
            </div>
          </div>
          <div class="carsuoF2" v-for="(item,index) of arr2" :key="index">
            <a href="#" class="pic-pack-outer">
              <img :src="item.mimgurl?'http://127.0.0.1:3000/'+item.mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo5.jpg'" alt>
              <h3>{{item.mname}}</h3>
              <i class="score1">
                <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
              </i>
              <p>{{item.mcontent}}</p>
            </a>
          </div>
          <!-- <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="../../public/img/index/6F_carsuo8.jpg" alt>
              <h3>金珠玛米</h3>
              <i class="score1">
                <b>7</b>.1
              </i>
              <p>天高地阔好恶由心</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="../../public/img/index/6F_carsuo9.jpg" alt>
              <h3>金珠玛米</h3>
              <i class="score1">
                <b>7</b>.1
              </i>
              <p>天高地阔好恶由心</p>
            </a>
          </div> -->
        </div>
      </swiper-slide>
       <!-- 第五个图片内容 -->
      <swiper-slide>
        <div class="father">
          <div class="mod">
            <a href="#">
              <img :src="list[4][0].mimgurl?'http://127.0.0.1:3000/'+list[4][0].mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo5.jpg'" alt>
            </a>
            <div class="pack-info-star">
              <i class="score">
                <b>{{list[4][0].mcode}}</b>.0
              </i>
              <h3>{{list[4][0].mname}}</h3>
            </div>
          </div>
          <div class="mod2">
            <h2>
              <a href="#" class="title">获封“知乎男神” 张译不想被说演员“没文化”</a>
            </h2>
            <p class="intro">被封为“知乎男神”的张译，获得了平台“荣誉会员”的认证。他在领奖时说，之所以公开作答，是外界总说演员没文化，他希望借自己力量来普...</p>
            <div class="new-list">

              <a href="#"> &nbsp;&nbsp; 1. &nbsp;《一路惊喜》2015</a>

              <a href="#"> &nbsp;&nbsp; 2. &nbsp;《亲爱的》2014</a>

              <a href="#"> &nbsp;&nbsp; 3. &nbsp;《黄金时代》2014</a>

              <a href="#"> &nbsp;&nbsp; 4. &nbsp;《匹夫》2012</a>
            </div>
          </div>
          <div class="carsuoF2" v-for="(item,index) of arr3" :key="index">
            <a href="#" class="pic-pack-outer">
              <img :src="item.mimgurl?'http://127.0.0.1:3000/'+item.mimgurl:'http://127.0.0.1:3000/img/index/6F_carsuo5.jpg'" alt>
              <h3>{{item.mname}}</h3>
              <i class="score1">
                <b>{{item.mcode|code1}}</b>.{{item.mcode|code2}}
              </i>
              <p>{{item.mcontent}}</p>
            </a>
          </div>
          <!-- <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="../../public/img/index/6F_carsuo8.jpg" alt>
              <h3>金珠玛米</h3>
              <i class="score1">
                <b>7</b>.1
              </i>
              <p>天高地阔好恶由心</p>
            </a>
          </div>
          <div class="carsuoF2">
            <a href="#" class="pic-pack-outer">
              <img src="../../public/img/index/6F_carsuo9.jpg" alt>
              <h3>金珠玛米</h3>
              <i class="score1">
                <b>7</b>.1
              </i>
              <p>天高地阔好恶由心</p>
            </a>
          </div> -->
        </div>
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination"></div>
    </swiper>
  </div>
</template>

<script>
export default {
  data() {
    return {
      swiperOption: {
        direction: "vertical",
        slidesPerView: 1,
        spaceBetween: 30,
        mousewheel: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true}
      },
      list:[
        [{mcode:"",mname:"",mimgurl:""},{mcode:"",mname:"",mimgurl:""},{mcode:"",mname:"",mimgurl:""},{mcode:"",mname:"",mimgurl:""}],
        [{mimgurl:"",mcode:"",mname:""}],
        [{mcode:"",mname:"",mimgurl:""},{mcode:"",mname:"",mimgurl:""}],
        [{mcode:"",mname:"",mimgurl:""},{mcode:"",mname:"",mimgurl:""}],
        [{mcode:"",mname:"",mimgurl:""},{mcode:"",mname:"",mimgurl:""}]],

         arr1:[],
         arr2:[],
         arr3:[],
    };
  },
  methods:{
    scpage(){
      this.$router.push("/star")
    }
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
  // 组件创建成功
  created(){
    var url="card6";
    this.axios.get(url).then(result=>{
      // this.list=result.data;
      // console.log(this.list);
      // 获取第一个图片中的内容
      this.list[0]=[];
      for(var i=0;i<4;i++){
        this.list[0].push(result.data[i]);
      }
      console.log(this.list[0]);
      // 获取第二个图片中的内容
      this.list[1]=[];
      for(var i=4;i<5;i++){
        this.list[1].push(result.data[i]);
      }
      console.log(this.list[1]);

      // 获取第三个图片中的内容
      this.list[2]=[];
      for(var i=5;i<9;i++){
        this.list[2].push(result.data[i]);
      }
      console.log(this.list[2]);
      // 获得要循环的三个数组内容
      this.arr1=this.list[2].slice(1);
      console.log(this.arr1);

      // 获取第四个图片中的内容
      this.list[3]=[];
      for(var i=9;i<13;i++){
        this.list[3].push(result.data[i]);
      }
      console.log(this.list[3]);
      // 获得要循环的三个数组内容
      this.arr2=this.list[3].slice(1);
      console.log(this.arr2);

      // 获取第五个图片中的内容
      this.list[4]=[];
      for(var i=13;i<17;i++){
        this.list[4].push(result.data[i]);
      }
      console.log(this.list[4]);
      // 获得要循环的三个数组内容
      this.arr3=this.list[4].slice(1);
      console.log(this.arr3);
    })
  }
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
}
/* 介绍导航样式 */
.tab {
  width: 1000px;
  margin: 0 auto;
}
.tab h3 {
  text-align: left;
  color: #609fbf;
  font-size: 24px;
  height: 28px;
  font-weight: normal;
  margin-bottom: 16px;
}
.tab p {
  float: right;
  font-size: 13px;
  color: #609fbf;
}
/* 轮播宽高 */
.myswiper6 {
  height: 240px;
  width: 1000px;
}
.father {
  display: flex;
  justify-content: space-around;
  margin: 0 auto;
}
/* 第一个轮播内容 */
a {
  text-decoration: none;
  outline: none;
}
.mod {
  width: 150px;
  margin-left:-6px; 
}
.pack-info-star {
  height: 53px;
  overflow: hidden;
  /* zoom: 1; */
}
.pack-info-star .score {
  float: right;
  width: 53px;
  text-align: center;
  color: #fff;
  font-size: 16px;
  background-color: #e6685b;
  margin-left: 5px;
}
.pack-info-star .score b {
  font-size: 26px;
}
.pack-info-star h3 {
  font-size: 14px;
  font-weight: normal;
  text-align: left;
  margin-top: 7px;
}
/* 第二块简介样式 */
.mod2 {
  width: 320px;
}
.title {
  text-align: left;
  font-size: 20px;
  color: #609fbf;
  font-weight: normal;
  line-height: 1.5;
  margin-top: -5px;
  margin-bottom: 10px;
  display: inline-block;
}
.mod2 .intro {
  display: inline-block;
  text-align: left;
  font-size: 13px;
  color: #949494;
  line-height: 1.8;
  max-height: 64px;
  margin-bottom: 9px;
  overflow: hidden;
}
.new-list a{
    display:block;
    text-align: left;
    color: #333;
    padding: 0.7px;
}
/* 电影简介样式 */
.carsuoF2 {
  width: 150px;
  background-color:#f3f3f3;
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
  margin-bottom: 3px;
  text-align: left;
  margin-top: 2px;
}
/* 鼠标经过颜色变化 */
.pic-pack-outer h3:hover {
  color: #609fbf;
}
.score1 {
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
.carsuoF2_2{
  width: 450px;
}
</style>
