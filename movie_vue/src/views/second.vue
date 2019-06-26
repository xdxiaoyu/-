<template>
  <div>
    <myHeader></myHeader>
    <div class="dd">
      <div class="movie_screen movie_column_name">
        <span class="movie_column_name_s">栏目:</span>
        <p class="movie_column_name_p">
          <a href="#" class="movie_column_name_type">电影</a>
          <a href="#" class="movie_column_name_type">微电影</a>
          <a href="#" class="movie_column_name_type">系列电影</a>
          <a href="#" class="movie_column_name_type">纪录片</a>
          <a href="#" class="movie_column_name_type">晚会</a>
          <a href="#" class="movie_column_name_type active">独家</a>
          <a href="#" class="movie_column_name_type">综艺</a>
          <a href="#" class="movie_column_name_type">体育</a>
        </p>
      </div>
      <div class="movie_screen movie_type">
        <span class="movie_type_p">类型:</span>
        <p class="p1">
          <a href="#" class="movie_type_name active">全部</a>
          <a href="#" class="movie_type_name">爱情</a>
          <a href="#" class="movie_type_name">动作</a>
          <a href="#" class="movie_type_name">喜剧</a>
          <a href="#" class="movie_type_name">惊悚</a>
          <a href="#" class="movie_type_name">恐怖</a>
          <a href="#" class="movie_type_name">悬疑</a>
          <a href="#" class="movie_type_name">科幻</a>
          <a href="#" class="movie_type_name">奇幻</a>
          <a href="#" class="movie_type_name">历史</a>
          <a href="#" class="movie_type_name">灾难</a>
          <a href="#" class="movie_type_name">冒险</a>
          <a href="#" class="movie_type_name">励志</a>
          <a href="#" class="movie_type_name">青春</a>
          <a href="#" class="movie_type_name">动画</a>
          <a href="#" class="movie_type_name">儿童</a>
          <a href="#" class="movie_type_name">家庭</a>
          <a href="#" class="movie_type_name">伦理</a>
        </p>
      </div>
      <div class="movie_screen movie_local">
        <span class="movie_local_s">地区:</span>
        <p class="movie_local_p">
          <a href="#" class="movie_local_type active">全部</a>
          <a href="#" class="movie_local_type">内地</a>
          <a href="#" class="movie_local_type">港台</a>
          <a href="#" class="movie_local_type">欧美</a>
        </p>
      </div>
      <div class="movie_screen movie_plot">
        <span class="movie_plot_s">基因:</span>
        <p class="movie_plot_p">
          <a href="#" class="movie_plot_name active">全部</a>
          <a href="#" class="movie_plot_name">抗日</a>
          <a href="#" class="movie_plot_name">间谍</a>
          <a href="#" class="movie_plot_name">硬汉</a>
          <a href="#" class="movie_plot_name">枪战</a>
          <a href="#" class="movie_plot_name">杀手</a>
          <a href="#" class="movie_plot_name">夫妻档</a>
          <a href="#" class="movie_plot_name">穿越</a>
          <a href="#" class="movie_plot_name">恶搞</a>
        </p>
      </div>
      <div class="d2">
        <span>在全部影片中,我们为你找到了</span>
        <span class="s5">7951</span>
        <span>部影片</span>
      </div>
      <div class="aa">
        <a href="#" class="a3">最新</a>
        <a href="#" class="a4">最热</a>
        <a href="#" class="a5">好评</a>
      </div>
      <div class="d1">
        <!-- 卡片 -->
        <div class="card" v-for="(item,index) of list" :key="index">
          <img :src="'http://127.0.0.1:3000/img/movie/'+item.m_imgurl" alt>
          <div class="tabs">
            <!-- 标题 -->
            <span class="title">{{item.m_name}}</span>
            <span class="score">
              <i>{{item.m_code|codeFilter1}}</i>
              .{{item.m_code|codeFilter2}}
            </span>
          </div>
          <div class="sub">{{item.m_content}}</div>
        </div>
        <div class="card" v-for="(item,index) of list" :key="index">
          <img :src="'http://127.0.0.1:3000/img/movie/'+item.m_imgurl" alt>
          <div class="tabs">
            <!-- 标题 -->
            <span class="title">{{item.m_name}}</span>
            <span class="score">
              <i>{{item.m_code|codeFilter1}}</i>
              .{{item.m_code|codeFilter2}}
            </span>
          </div>
          <div class="sub">{{item.m_content}}</div>
        </div>
        <div class="card" v-for="(item,index) of list" :key="index">
          <img :src="'http://127.0.0.1:3000/img/movie/'+item.m_imgurl" alt>
          <div class="tabs">
            <!-- 标题 -->
            <span class="title">{{item.m_name}}</span>
            <span class="score">
              <i>{{item.m_code|codeFilter1}}</i>
              .{{item.m_code|codeFilter2}}
            </span>
          </div>
          <div class="sub">{{item.m_content}}</div>
        </div>
        <ul class="u1">
          <li class="l1">上一页</li>
          <li class="l2">1</li>
          <li class="l3">2</li>
          <li class="l4">3</li>
          <li class="l5">4</li>
          <li class="l6">5</li>
          <li class="l7">...</li>
          <li class="l8">50</li>
          <li class="l9">下一页</li>
        </ul>
        <div class="d1">
          <div class="bot">
            <img src="../../public/img/index/25.png" alt>
            <div class="tabs">
              <span class="title">我们的十年</span>
            </div>
          </div>
          <div class="bot">
            <img src="../../public/img/index/26.png" alt>
            <div class="tabs">
              <span class="title">我的战争</span>
            </div>
          </div>
          <div class="bot">
            <img src="../../public/img/index/27.png" alt>
            <div class="tabs">
              <span class="title">我最好朋友的婚礼</span>
            </div>
          </div>
          <div class="bot">
            <img src="../../public/img/index/28.png" alt>
            <div class="tabs">
              <span class="title">我的新野蛮女友</span>
            </div>
          </div>
          <div class="bot">
            <img src="../../public/img/index/29.png" alt>
            <div class="tabs">
              <span class="title">大鱼海棠</span>
            </div>
          </div>
          <div class="bot">
            <img src="../../public/img/index/30.png" alt>
            <div class="tabs">
              <span class="title">枕边有张脸</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- <myFooter></myFooter> -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      movie: [],
      list: []
    };
  },
  created() {
    var url = "movie";
    var obj = { lm: "内地" };
    this.axios.get(url, { params: obj }).then(result => {
      var arr = [];
      for (var i = 0; i < result.data.length; i++) {
        arr[i] = result.data[i];
      }
      this.list = arr;
    });
  },
  filters: {
    codeFilter1(code) {
      return Math.floor(code);
    },
    codeFilter2(code) {
      return (code * 10) % 10;
    }
  }
};
</script>
<style scoped>
/*头部最外层父元素样式*/
.dd1 {
  display: flex;
  border: 1px solid #fff;
  margin-bottom: -28px;
  margin-top: 16px;
  text-align: center;
}

.movie_screen {
  text-align: left;
}
.movie_screen span {
  width: 60px;

  border-right: 1px solid #fff;
  background-color: #efefef;
  text-align: center;
  color: #747474;
}
.movie_screen p {
  display: inline-block;
  color: black;
}
.movie_screen p::after {
  content: "";
  clear: both;
}
.movie_screen p > a {
  display: inline-block;
  padding: 2px 8px;
  margin: 4px 2px;
  line-height: 20px;
  color: #333;
  font-size: 14px;
  text-decoration: none;
}
.movie_screen p .active {
  background-color: #ff8d1b;
  color: white;
}
.movie_screen p a:hover {
  cursor: pointer;
  background-color: #ff8d1b;
  color: white;
}
/* a标签所有字体样式 */
.a1 {
  text-decoration: none;
  margin-right: 15px;
  font-size: 13px;
  color: #444;
}
/*a标签所有字体鼠标经过时的样式*/
.a1:hover {
  color: #fff;
  cursor: pointer;
  background-color: #ff8d1b;
  padding: 2px 8px;
}
/*黄色背景字体的样式*/
.a2 {
  padding: 2px 8px;
  margin: 4px 3px;
  line-height: 20px;
  text-decoration: none;
  margin-left: 20px;
  font-size: 13px;
  color: #fff;
  background-color: #ff8d1b;
}
/*栏目，类型，地区，基因字体的样式*/
.s1 {
  width: 60px;
  height: 25px;
  text-align: center;
  margin-bottom: 10px;
  margin-right: -14px;
  background-color: #efefef;
  color: #747474;
  border-bottom: 1px solid #fff;
}
/*介绍主题字体样式*/
.d2 {
  margin-top: 50px;
  font-size: 14px;
  color: #747474;
  text-align: left;
}
/*7951的样式*/
.s5 {
  color: #e6685b;
  padding: 0 5px;
}
.aa {
  text-align: left;
}
.a3 {
  font-size: 13px;
  width: 75px;
  height: 28px;
  background-color: #efefef;
  text-decoration: none;
  color: #747474;
}
.a4 {
  background-color: #ff8d1b;
  font-size: 14px;
  width: 75px;
  height: 28px;
  text-decoration: none;
  color: #fff;
  margin-right: 10px;
  text-align: center;
  line-height: 28px;
}
.a5 {
  font-size: 13px;
  width: 75px;
  height: 28px;
  background-color: #efefef;
  text-decoration: none;
  color: #747474;
}
/*最外层父元素的样式*/
.dd {
  width: 1000px;
  margin: 0 auto;
}
/*每6个一排*/
.d1 {
  display: flex;
  flex-wrap: wrap;
  justify-content: left;
}
/*每一个电影的总样式*/
.card {
  width: 150px;
  height: 258px;
  background-color: #f9f9f9;
  margin: 10px 16.6px 10px 0;
}
.bot {
  width: 150px;
  height: 140px;
  background-color: #f9f9f9;
  margin: 10px 16.6px 10px 0;
}
/*标题和评分的共有样式*/
.tabs {
  width: 150px;
  height: 18px;
  display: flex;
  justify-content: space-between;
  font-size: 1rem;
  margin-top: 0.25rem;
}
/*标题的样式*/
.title {
  line-height: 18px;
  color: #333;
  overflow: hidden;
  text-align: left;
  font-size: 13px;
  margin-left: 5px;
}
.title:hover {
  color: #609fbf;
  cursor: pointer;
}
/*评分的样式*/
.score {
  color: #d13013;
  margin-right: 14px;
}
/*小标题的样式*/
.sub {
  width: 150px;
  height: 18px;
  text-align: left;
  color: #949494;
  font-size: 10px;
  margin-top: 0.25rem;
  margin-left: 5px;
}
.sub:hover {
  cursor: pointer;
}
.u1 {
  display: flex;
  margin: 0 auto;
  width: 500px;
  margin-left: 250px;
  margin-top: 30px;
  margin-bottom: 30px;
}
.l1,
.l3,
.l4,
.l5,
.l6,
.l8,
.l9 {
  background-color: #efefef;
  margin: 0 3px;
  padding: 0px 12px;
  list-style: none;
  color: #949494;
}
.l3:hover {
  background-color: #609fbf;
  color: #efefef;
  cursor: pointer;
}
.l4:hover {
  background-color: #609fbf;
  color: #efefef;
  cursor: pointer;
}
.l5:hover {
  background-color: #609fbf;
  color: #efefef;
  cursor: pointer;
}
.l6:hover {
  background-color: #609fbf;
  color: #efefef;
  cursor: pointer;
}
.l8:hover {
  background-color: #609fbf;
  color: #efefef;
  cursor: pointer;
}
.l9:hover {
  background-color: #609fbf;
  color: #efefef;
  cursor: pointer;
}
.l2 {
  background-color: #609fbf;
  color: #efefef;
  margin: 0 3px;
  padding: 0px 12px;
  list-style: none;
}
.l7 {
  margin: 0 3px;
  padding: 0px 12px;
  list-style: none;
  color: #949494;
  font-size: 20px;
}
</style>
