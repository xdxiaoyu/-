<template>
  <div>
    <div class="title">  
      <h3 class="h3">有爱电影网</h3>
      <h4 class="h4">登录</h4>
    </div>  
    <div>
      <img src="" alt="">
      <div class="big">
         <div class="log">
           <div class="login">登录</div>
           <span class="logup">注册电影网账号</span>
         </div>
         <div class="in">
           <div class="line"></div>  
           <input type="text" :placeholder="accountPlaceholder" v-model="uname" class="in1"><br>
           <input type="password" placeholder="请输入密码" v-model="upwd" class="in2"><br>
           <input type="text" placeholder="验证码" class="in3">
           <img src="../../public/img/header-img/17.png" class="xt"><br>
           <button class="btn" @click="login">登录</button>
           <div class="upwd">
             <input type="checkbox" class="chb">
             <span class="pass1">记住密码</span>
             <span class="pass2">忘记密码</span>
           </div>  
         </div>  
         <div class="cen">使用合作账号注册</div>
         <div class="ii">
            <div>
              <img src="../../public/img/header-img/10.png" class="img1">
              <div class="font">微信</div>    
            </div>
            <div class="way">
              <img src="../../public/img/header-img/11.png" class="img2">
              <div class="font">QQ</div>    
            </div> 
            <div class="way">
              <img src="../../public/img/header-img/12.png" class="img3">
              <div class="font">微博</div>    
            </div> 
            <div class="way">
              <img src="../../public/img/header-img/13.png" class="img4">
              <div class="font">更多</div>    
            </div>  
         </div>
      </div>    
    </div>
    <div class="foot">
       <div class="footer">
         <a href="#">关于我们</a>|
         <a href="#">网站地图</a>|  
         <a href="#">成品英才</a>|  
         <a href="#">版权声明</a>|  
         <a href="#">联系我们</a>|  
         <a href="#">友情链接</a>|  
         <a href="#">CCTV6广告招商</a>    
       </div>
       <div class="bot">电影频道节目中心 版权所有</div>
    </div>   
  </div>  
</template>
<script>
export default {
   data(){
       return {
          accountPlaceholder:"手机号/邮箱/会员名",
          uname:"",
          upwd:"",
       }
   },
   methods:{
           login(){
               //完成用户登录
               //获取用户输入用户名
               //获用户输入密码
               console.log(this.uname,this.upwd);
               var n=this.uname;
               var p=this.upwd;
               //创建两个正则表达式
               var nreg=/^[a-zA-Z0-9]{1,20}$/;
               var preg=/^[a-zA-Z0-9]{1,20}$/;
               //判断用户名格式不正确，提示出错
               if(!nreg.test(n)){
                   alert("用户名格式不正确");
                   return;
               }
               //判断密码格式不正确，提示出错
               if(!preg.test(p)){
                  alert("密码格式不正确");
                   return;
               }
               //将用户名和密码发送ajax请求
               var url="login";
               var obj={uname:n,upwd:p};
               //并且获取服务器返回结果
               this.axios.get(url,{params:obj}).then(result=>{
                   if(result.data.code==1){
                       //跳转到另一个页面
                       this.$router.push("/index");
                   }else{
                       this.$messagebox("消息",result.data.msg);
                   }
               });
           },
       },
}
</script>
<style scoped>
/*标题样式*/ 
.title{
    display:flex;
}
.h3{
   color:#555;
   line-height:30px;
   margin:30px 30px 30px 400px;
   font-weight:bold;
}
.h4{
   color:#9498a1;
   line-height:30px;
   margin:30px;
   margin-left:10px; 
}
.big{
    width:1000px;
    height:1000px;
    margin-left:700px;
}
/*登录，注册电影账号字体样式*/
.log{
    display:flex;
}
.login{
    font-size:20px;
    font-weight:normal;
    color:#418fe4;
    cursor:pointer;
    margin-left:350px;
} 
.logup{
    font-size:20px;
    font-weight:normal;
    color:#4d4d4d;
    cursor:pointer;
    margin-left:120px;
}

/*输入框样式*/
.in{
    margin-top:40px;
}
.in1,.in2{
  width:300px;
  height:40px;  
  margin-bottom:15px;
  color:#999;
  font-family:"微软雅黑";
  font-size:13px;
  line-height:40px;
  border:1px solid #e4e4e4;
  outline:none;
  border-radius:3px;
  padding:4px 6px;  
}
.in3{
  width:150px;
  height:40px;  
  margin-bottom:15px;
  margin-left:-3px;
  color:#ddd;
  font-family:"微软雅黑";
  font-size:13px;
  line-height:40px;
  border:1px solid #e4e4e4;
  outline:none;
  border-radius:3px;
  padding:4px 6px;     
}
.xt{
    width:140px;
    height:38px;
    margin-left:10px;
    margin-top:-1px;
}
/*按钮的样式*/
.btn{
    width: 300px;
    height: 50px;
    border-radius: 5px;
    background: #418fe4;
    color: #ffffff;
    font-size: 18px;
    line-height: 50px;
    border: none;
    text-align: center;
    cursor:pointer;
} 
.ii{
    display:flex;
    margin-left:350px;
}
.cen{
    color:#808080;
    padding:0 14px;
    background-color:#fff;
    text-align:center;
    line-height:1px;
    font-size:12px;
    margin-top:15px;
    margin-bottom:15px;
}
/*登录方式图片的样式*/ 
.img1{
    width: 40px;
    height: 55px;
    text-align: center;
    color: #666666;
    margin-top:20px;
}
.img2,.img3,.img4{
    width: 40px;
    height: 55px;
    text-align: center;
    color: #666666;
    margin-top:20px;
}
.way{
     margin-left:45px;
}
.font{
    color:#666;
    text-align:center;
    font-size:12px;
    cursor:pointer;
    margin-top:10px;
}
.upwd{
    display:flex;
    margin-left:350px;
}
.pass1{
    color:#686868;
    cursor:default;
    line-height:38px;
    font-size:14px;
}
.chb{
    border:none;
    margin:12px 6px 0 0;
    padding:0;

    }
.pass2{
    color:#686868;
    cursor:default;
    line-height:38px;
    font-size:14px;
    margin-left:160px; 
}
/*底部样式*/
.foot{
    margin-top:-350px;
}
.foot>.footer>a{
    text-decoration:none;
    color:#797979;
    padding:0 10px;
    text-align:center;
    line-height:28px;
    font-size:14px;
}
.bot{
    color:#b7b7b7;
    line-height:28px;
    font-size:14px;
    text-align:center;
}
</style>
