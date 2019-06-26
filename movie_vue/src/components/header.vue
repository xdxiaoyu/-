<template>
    <div id="header">
        <div  class="d1">
    		<div>
      			<img src="img/header/2.png" class="i1">
      			<span class="s1">有爱电影网</span>
      			<span class="s2">大</span>
      			<span class="s3">片</span>
      			<a href="#" class="s4">导航</a>
    		</div>
    		<div class="d2">
      			<input type="text" placeholder="龙之战" class="i2">
      			<img src="img/header/3.png" class="i3">
    		</div>
   			<div  class="d3">
      			<div>
        			<img src="img/header/4.png"  class="i4">
        			<div class="d4">开通会员</div>
      			</div>
				<div>
					<img src="img/header/5.png"  class="i5">
					<div class="d5">播放记录</div>
				</div>
				<div>
					<img src="img/header/6.png"  class="i6">
					<div class="d6">登录/注册</div>
				</div>
    		</div>
  		</div> 
		<!--页面头部的下拉选项导航条-->
		<div id="header_header">
			<!--div让列表居中显示-->
			<div>
				<ul id="header_header_ul1">
					<li @mouseenter="enter(0)" @mouseleave="leave(0)">
                        <a href="javascript:;">首页</a>
                        <!--让header_header_ul1下的li结构相同-->
                        <ul></ul>
                    </li>
					<li @mouseenter="enter(1)" @mouseleave="leave(1)">
						<a href="javascript:;">大片</a>
						<!--下拉选项-->
						<ul>
							<li><a href="javasript:;">百鸟朝凤</a></li>
							<li><a href="javasript:;">开罗宣言</a></li>
							<li><a href="javasript:;">澳门风云3</a></li>
							<li><a href="javasript:;">分手再说我爱你</a></li>
							<li><a href="javasript:;">谋杀似水年华</a></li>
							<li><a href="javasript:;">不可思议</a></li>
							<li><a href="javasript:;">查看更多&gt;&gt;</a></li>
						</ul>
					</li>
					<li @mouseenter="enter(2)" @mouseleave="leave(2)">
						<a href="javascript:;">港片</a>
						<ul>
							<li><a href="javasript:;">杀破狼2</a></li>
							<li><a href="javasript:;">澳门风云2</a></li>
							<li><a href="javasript:;">冲上云霄</a></li>
							<li><a href="javasript:;">赤道</a></li>
							<li><a href="javasript:;">吉星高照2015</a></li>
							<li><a href="javasript:;">澳门风云</a></li>
							<li><a href="javasript:;">查看更多&gt;&gt;</a></li>
						</ul>
					</li>
					<li @mouseenter="enter(3)" @mouseleave="leave(3)">
						<a href="javascript:;">欧美</a>
						<ul>
							<li><a href="javasript:;">海蒂和爷爷</a></li>
							<li><a href="javasript:;">绿皮书</a></li>
							<li><a href="javasript:;">惊奇队长</a></li>
							<li><a href="javasript:;">心慌方</a></li>
							<li><a href="javasript:;">海上钢琴师</a></li>
							<li><a href="javasript:;">无姓之人</a></li>
							<li><a href="javasript:;">查看更多&gt;&gt;</a></li>
						</ul>
					</li>
					<li @mouseenter="enter(4)" @mouseleave="leave(4)">
						<a href="javascript:;">独家</a>
						<ul>
							<li><a href="javasript:;">毛驴县令之大事小情</a></li>
							<li><a href="javasript:;">毛驴县令之歪打正着</a></li>
							<li><a href="javasript:;">毛驴县令之棒子老虎鸡</a></li>
							<li><a href="javasript:;">毛驴县令之酸儿辣女</a></li>
							<li><a href="javasript:;">毛驴县令之你我他</a></li>
							<li><a href="javasript:;">毛驴县令之移花接木</a></li>
							<li><a href="javasript:;">查看更多&gt;&gt;</a></li>
						</ul>
					</li>
					<li @mouseenter="enter(5)" @mouseleave="leave(5)">
						<a href="javascript:;" @click="cl">内地</a>
						<ul>
							<li><a href="javasript:;">阿凡提</a></li>
							<li><a href="javasript:;">流浪地球</a></li>
							<li><a href="javasript:;">驴得水</a></li>
							<li><a href="javasript:;">红海行动</a></li>
							<li><a href="javasript:;">芳华</a></li>
							<li><a href="javasript:;">狗十三</a></li>
							<li><a href="javasript:;">查看更多&gt;&gt;</a></li>
						</ul>
					</li>
					<li @mouseenter="enter(6)" @mouseleave="leave(6)">
						<a href="javascript:;" @click="secpage">CCTV6收视强片</a>
						<ul>
							<li><a href="javasript:;">绣春刀</a></li>
							<li><a href="javasript:;">血滴子</a></li>
							<li><a href="javasript:;">露水红颜</a></li>
							<li><a href="javasript:;">冰封：重生之门</a></li>
							<li><a href="javasript:;">奥斯卡全程中文...</a></li>
							<li><a href="javasript:;">洋妞到我家</a></li>
							<li><a href="javasript:;">查看更多&gt;&gt;</a></li>
						</ul>
					</li>
				</ul>
				<ul id="header_header_ul2">
					<li><a href="javascript:;">主题片场</a></li>
					<li><a href="javascript:;">艺术影院</a></li>
					<li><a href="javascript:;">网络电影</a></li>
					<li><a href="javascript:;">分类检索</a></li>
					<li><a href="javascript:;">排行榜</a></li>
				</ul>
			</div>
		</div>    
    </div>
</template>

<script>
export default {
    data(){
        return{
            
        };
    },
    methods:{
        //控制header_header_ul1下的li下的ul随鼠标移入移出进行显示隐藏。利用了冒泡
        enter(n){
            document.getElementById("header_header_ul1").children[n].lastChild.style.display="block";
        },
        leave(n){
            document.getElementById("header_header_ul1").children[n].lastChild.style.display="none";
		},
		cl(){
			this.$router.push("/second")
		},
		secpage(){
			this.$router.push("SecondPage1")
		}
    },
}
</script>

<style>
/*去除默认样式*/
body,ul{
	margin: 0;
	padding: 0;
}
ul{
	list-style: none;
}
/*不加前缀会干扰别的组件*/
#header a{
	text-decoration: none;
	color: #fff;
}
#header a:hover{
    text-decoration: none;
	color: #fff;
}
/*图片的样式*/
.i1{
	width:43px;
}
/*有爱电影网标题的样式*/
.s1{
	color:#666;
	font-weight:bolder;
	font-size:20px;
}
/*大片二字的样式*/
.s2,.s3{
	color:red;
	font-size:16px;
	font-weight:bold;
}
.s2{
	margin-left:20px;
}
.s3{
	margin-left:5px;
}
/*整体的样式*/
.d1{
	width: 1000px;
	height: 4rem;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
/*整个搜索框的样式*/
.d2{
	margin-left:50px;
}
/*龙之战搜索框的样式*/
.i2{
	font-size:10px;
	height:20px;
	width:200px;
	color:#666;
	padding-left:8px;
	border: 1px solid #adb2b9;
}
/*导航两个字的样式*/
.s4{
	font-size:12px;
	font-weight:normal;
	color:#90a4a1;
	margin-left:10px;
	text-decoration:none;
	cursor:pointer;
}
/*搜索图片党的样式*/
.i3{
	width:30px;
}
/*右边三个小标题的样式*/
.d3{
	display:flex;
	color:#90a4a1;
	font-size:8px;
	margin-left:60px;
}
/*右边三个小图片*/
.i4,.i5,.i6{
	margin-left:14px;
}
/*右边三个小标题*/
.d4,.d5,.d6{
  margin-left:11px;
}
/*设置#header_header的宽度不小于1000px*/
#header_header{
	width: 100%;
	min-width: 1000px;
    background-color: #ff8d1b;
    margin-bottom: 2rem;
}
/*设置#header_header下放两个ul的容器定宽定高，水平居中。两个容器水平两端对齐*/
#header_header>div{
	width: 1000px;
	height: 3rem;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	background: url(http://127.0.0.1:3000/img/header/bg1.jpg);
}
/*设置#header_header下两个ul定高，并借助弹性布局使li水平排布*/
#header_header>div>ul{
	height: 3rem;
	display: flex;
}
#header_header>div>ul>li{
	height: 3rem;
	/*使边框不超出容器外*/
	box-sizing: border-box;
	line-height: 3rem;
	/*使li间有间距*/
	padding: 0 0.8rem;
	position: relative;
}
#header_header>div>ul>li:hover{
    border-bottom: 3px solid #d00060;
	background-color: #101a25;
}
/*设置下拉选项的默认样式*/
#header_header>div>ul>li>ul{
	/*让这一级容器脱离文档流*/
	position: absolute;
	/*让其与上方li对齐*/
	left: 0;
	width: 140px;
	background-color: #343c45;
    z-index:999;
    display: none;
}
#header_header>div>ul>li>ul>li{
	padding-left:4px;
	text-align: left;
}
#header_header>div>ul>li>ul>li>a{
	color: #bfcde2;
}
#header_header>div>ul>li>ul>li:hover{
	background-color: #101a25;
}
#header_header>div>ul>li>ul>li>a:hover{
	color: #fff;
}
/*设置两个ul各自的字体颜色*/
#header_header>div>#header_header_ul1>li{
	color: #fff;
}
#header_header>div>#header_header_ul2>li{
	color: #bfcde2;
}
</style>
