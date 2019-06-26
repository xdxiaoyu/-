<template>
  <div class="bg_white">
    <div class="container">
      <ul class="list-unstyled d-flex justify-content-around p-1">
        <li>
          <a href="javascript:;">
            <img src="img/footer/fot1.png" alt>
          </a>
          <a href="javascript:;" class="d-block">帮助中心</a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="img/footer/fot2.png" alt>
          </a>
          <a href="javascript:;" class="d-block">在线反馈</a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="img/footer/fot3.png" alt>
          </a>
          <a href="javascript:;" class="d-block">客服电话</a>
        </li>
      </ul>
    </div>
    <!-- 底部面包屑导航 -->
    <div id="dh" class="container">
      <ul class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">关于我们</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">网站地图</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">诚聘英才</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">版权声明</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">联系我们</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">友情链接</a>
        </li>
        <li class="breadcrumb-item">
          <a href="#">CCTV6广告招商</a>
        </li>
      </ul>
    </div>
    <div>
        <p class="p1">电影频道节目中心 版权所有</p>
    </div>
  </div>
</template>

<script>
export default {
    data(){
        return{}
    }
};
</script>

<style scoped>
*{padding: 0;margin: 0}
/* 底部背景颜色 */
.bg_white{
    background-color: #EBEBEB;
    border: 1px solid #dedede;
}
.container{
    margin: 0 auto;
}
/* 底部导航图片下文字样式 */
.container>ul>li>a{
    text-align: center;
    font-size: 16px;
    font-weight: bold;
    line-height: 20px;
    color: #333;
    margin-bottom: 0.5rem;
    text-decoration: none;
    padding: 10px;
}
/* 底部导航条位置 */
.breadcrumb{
    margin-left:259px;
}
/* 底部导航条文字样式 */
#dh>ul>li>a{
    color: #333;
    font-weight: normal;
    font-size: 13px;
    transition: all 0.5s;
}
.breadcrumb-item + .breadcrumb-item::before{
    content: "|";
}
/* 底部最后一行 */
.p1{
    color: #333;
    font-weight: normal;
    font-size: 13px;
    padding: 6px
}
#dh>ul>li>a:hover{
    border: 0.1px solid #666;
    background-color: #333;
    border-radius:5px; 
    color: #fff;
    transition: all 0.5s;
}
</style>
