<template>
 <div class="container">
   <div class="d0">
       微电影
   </div>
   <div class="d1">
     <div>
       <img src="../../public/img/mini_movie/1.png" class="i1">
     </div>
     <div class="d2">
       <div>
            <img src="../../public/img/mini_movie/2.png" class="i2">
       </div>     
       <div>
            <img src="../../public/img/mini_movie/3.png" class="i3">
       </div>
    </div>  
    <div class="dd3">
       <div class="d3">
           <p class="h1">善意的谎言</p>
           <p class="h2">诚实守信从自我做起 善意谎言可以原谅</p>
       </div> 
       <div>
           <img src="../../public/img/mini_movie/4.png" class="i4">
       </div>     
    </div>
     <div class="d6">
        <div>
             <img src="../../public/img/mini_movie/5.png" class="i5">
        </div>     
        <div>
             <img src="../../public/img/mini_movie/6.png" class="i6">
        </div>
    </div>
    <div class="d7">
        <div class="d5">
              <p class="h3">奇怪的她</p>
              <p class="h4">神奇饮料穿过过去，挽救同学，拯救生命</p>
        </div> 
        <div>
              <img src="../../public/img/mini_movie/7.png" class="i7">
        </div>     
    </div>
  </div>
   <div class="div0">
      电影专题
   </div>
   <div class="div1">
    <div class="div8">
      <img src="../../public/img/movie_special/1.png" alt="">
      <div class="div2">纪念长征胜利80周年</div>    
    </div>
    <div class="div9">
      <img src="../../public/img/movie_special/2.png" alt="">
      <div class="div3">模型洗脑喜剧大片</div>    
    </div>
    <div class="div10">
      <img src="../../public/img/movie_special/3.png" alt="">
      <div class="div4">纪火热大片县里国庆</div>    
    </div>
    <div class="div11">
      <img src="../../public/img/movie_special/4.png" alt="">
      <div class="div5">万恶毒品电影盘点</div>    
    </div>
    <div class="div12">
      <img src="../../public/img/movie_special/5.png" alt="">
      <div class="div6">燃爆“爱国”血腥</div>    
    </div>
    <div class="div13">
      <img src="../../public/img/movie_special/6.png" alt="">
      <div class="div7">最丰富的抗日电影</div>    
    </div>  
   </div> 
 </div> 
</template>
<script>
export default {
   data(){
    return {}
   }
}
</script>

<style scoped>
 .container{
   text-align:center;
 }
 /* 微电影的字体样式 */
      .d0{
        font-size:26px;
        font-weight:strong;
        color:#0aa1ed;
        margin-bottom:18px;
        margin-left:-1030px;
      }
      .d1{
          display:flex; 
      }
      /* 第一张图片的样式 */
      .i1{
        width:350px;
        height:260px;
      }
      /* 第二张图片的样式 */
      .i2{
        width:150px;
        height:120px;
      }
      /* 第三张图片的样式 */
      .i3{
        width:150px;
        height:120px;
        margin-top:14px;
      }
      .d2{
        margin-left:20px;
      }
       /* 善意的谎言。。。字的样式 */
      .d3{
        width:150px;
        height:120px;
        font-size:13px;
        background-color:#f9f9f9;
        margin-top:-9px;
      }
      .dd3{
        margin-left:20px;
      }
      .h1{
        color:#333;
        font-size:14px;
        font-weight:normal;
        padding:10px 2%;
        margin-top:7px;
        margin-bottom:6px;
      }
      .h1:hover{
        color:#609fbf;
        cursor:pointer;
      }
      .h2{
        color:#609fbf;
        font-size:14px;
      }
      .h2:hover{
        color:red;
      }
      /* 第四张图片样式 */
      .i4{
        width:150px;
        height:120px;
        margin-top:14px;
      }
       /* 第五张图片的样式 */
       .i5{
        width:150px;
        height:120px;
      }
      /* 第六张图片的样式 */
      .i6{
        width:150px;
        height:120px;
        margin-top:14px;
      }
      .d6{
        margin-left:20px;
      }
      /* 奇怪的她。。。字的样式 */
      .d5:hover{
         cursor:pointer;
         color:#0aa1ed;
       }
      .d5{
        width:150px;
        height:120px;
        font-size:13px;
        background-color:#f9f9f9;
        margin-top:-8px;
      }
      .h3{
        color:#333;
        font-size:14px;
        font-weight:normal;
        padding:10px 2%;
        margin-top:7px;
        margin-bottom:6px;
      }
      .h4{
        color:#609fbf;
        font-size:14px;
      }
      .h4:hover{
        color:red;
      }
      /* 最后一张图片的样式 */
      .i7{
        width:150px;
        height:120px;
        margin-top:14px;
      }
      .d7{
        margin-left:20px;
      }
   /*下面一排样式*/ 
   /* 下面一排父元素样式 */
  .div1{
     display:flex;
     margin-top:8px;  
  }
  /* 电影专题字体样式 */
   .div0{
      font-size:26px;
      font-weight:strong;
      color:#0aa1ed;
      margin-top:30px;
      margin-left:-1010px;
   }
   .div1:hover{
       cursor: pointer;
   }
   
   .div2:hover{
        color:#0aa1ed;
        cursor: pointer;
   }
   .div3:hover{
        color:#0aa1ed;
        cursor: pointer;
   }
   .div4:hover{
        color:#0aa1ed;
        cursor: pointer;
   }
   .div5:hover{
        color:#0aa1ed;
        cursor: pointer;
   }
   .div6:hover{
        color:#0aa1ed;
        cursor: pointer;
   }
   .div7:hover{
        color:#0aa1ed;
        cursor: pointer;
   }
   .div2,.div3,.div4,.div5,.div6,.div7{
     font-size:14px;
     font-weight:normal;
     padding:0 2%;
     margin-top:7px;
     margin-bottom:6px;
     margin-left:-28px;
   }
   .div8,.div9,.div10,.div11,.div12,.div13{
       width:156px;
       margin-right:20px;
       margin-top:10px;
   }
</style>
