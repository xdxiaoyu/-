<template>
    <!--主页面1楼-->
	<div id="section_one">
		<!--主页面1楼上半部-->
		<div id="section_one_header">
			<div>
				<div>按热播排行</div>
				<ul>
					<li><a href="javascript:;">本周最火</a></li>
					<li><a href="javascript:;">历史最火</a></li>
					<li><a href="javascript:;">最新上映</a></li>
					<li><a href="javascript:;">评分最高</a></li>
					<li><a href="javascript:;">女性专场</a></li>
					<li><a href="javascript:;">罪案题材</a></li>
					<li><a href="javascript:;" class="hot">CCTV6近日热播</a></li>
				</ul>
			</div>
			<div>
				<div>按类型</div>
				<ul>
					<li><a href="javascript:;">爱情</a></li>
					<li><a href="javascript:;">动作</a></li>
					<li><a href="javascript:;">喜剧</a></li>
					<li><a href="javascript:;">惊悚</a></li>
					<li><a href="javascript:;">恐怖</a></li>
					<li><a href="javascript:;">悬疑</a></li>
					<li><a href="javascript:;">科幻</a></li>
					<li><a href="javascript:;">奇幻</a></li>
					<li><a href="javascript:;">历史</a></li>
					<li><a href="javascript:;">灾难</a></li>
					<li><a href="javascript:;">经典</a></li>
					<li><a href="javascript:;" class="more">更多</a></li>
				</ul>
			</div>
			<div>
				<div>按地区</div>
				<ul>
					<li><a href="javascript:;">内地</a></li>
					<li><a href="javascript:;">港台</a></li>
					<li><a href="javascript:;">欧美</a></li>
				</ul>
			</div>
			<div>
				<div>按电影基因</div>
				<ul>
					<li><a href="javascript:;">抗日</a></li>
					<li><a href="javascript:;">间谍</a></li>
					<li><a href="javascript:;">硬汉</a></li>
					<li><a href="javascript:;" class="more">更多</a></li>
				</ul>
			</div>
		</div>
		<!--主页面1楼下半部--轮播区域,分为三个可视区域-->
		<div id="section_one_footer">
			<div class="con" v-for="(list,index) of lists" :key="index">
				<!--这一级div每一个代表一个可视区域下的六个div之一-->
				<div class="cad" @mouseenter="et(inx)" @mouseleave="lv(inx)" v-for="(item,inx) of list" :key="inx">
					<img :src="'http://127.0.0.1:3000/'+item.mimgurl" alt="">
					<div class="tas">
						<span class="tit">{{item.mname}}</span>
						<span class="sco"><i>{{item.mcode|codeFilter1}}</i>.{{item.mcode|codeFilter2}}</span>
					</div>
					<div class="det">{{item.mcontent}}</div>
					<div>{{item.mstate}}</div>
					<div></div>
				</div>	
			</div>
			<button @click="lbt">&lt;</button>
			<button @click="rbt">&gt;</button>
		</div>
	</div>
</template>

<script>
export default {
	props:{
        floor:{default:""}
    },
	//props:[mlm],
	data(){
		return {
			show: "0",
			//必须这么写，否则下方赋值不会成功
			lists:[[],[],[]],
		};
	},
	filters:{
		//将评分的整数位数值返回
		codeFilter1(code){
			return Math.floor(code);
		},
		//将评分的小数位数值返回
		codeFilter2(code){
			return (code*10)%10;
		},
	},
	created(){
		var url="card";
		var obj={lm:this.floor};
        this.axios.get(url,{params:obj}).then(result=>{
			var arr=[[],[],[]];
			for(var i=0;i<result.data.length;i++){
				arr[(i-i%6)/6][i%6]=result.data[i];
			};
			//要么这么写，要么在上方指明数组lists长度，否则刷新时将无内容
			this.lists=arr;
        });
	},
	mounted(){
		//由于刚加载就连点两次右按钮会在第三个区域进入可视区出现bug，先模拟点击下右按钮再模拟点击下左按钮
		this.rbt();
		this.lbt();
	},
	methods:{
		//为轮播小块设置鼠标移入移出事件
		et(n){
			//js从0编号，css从1编号
			var s=this.show;
			if(s==0){
				document.getElementById("section_one_footer").children[0].children[n].children[4].style.height="0px";
			}else if(s==1){
				document.getElementById("section_one_footer").children[1].children[n].children[4].style.height="0px";
			}else{
				document.getElementById("section_one_footer").children[2].children[n].children[4].style.height="0px";
			}
		},
		lv(n){
			var s=this.show;
			if(s==0){
				document.getElementById("section_one_footer").children[0].children[n].children[4].style.height="45px";
			}else if(s==1){
				document.getElementById("section_one_footer").children[1].children[n].children[4].style.height="45px";
			}else{
				document.getElementById("section_one_footer").children[2].children[n].children[4].style.height="45px";
			}
		},
		lbt(){
			//点击一个按钮后一定要让另一个按钮显示才符合实际
			document.getElementById("section_one_footer").children[4].style.display="block";
			this.show-=1;
			var ml=-1000*this.show;
			ml=ml+"px";
			document.getElementById("section_one_footer").firstElementChild.style.marginLeft=`${ml}`;
			if(this.show==0){
				document.getElementById("section_one_footer").children[3].style.display="none";
			}
		},
		rbt(){
			document.getElementById("section_one_footer").children[3].style.display="block";
			this.show+=1;
			var ml=-1000*this.show;
			ml=ml+"px";
			document.getElementById("section_one_footer").firstElementChild.style.marginLeft=`${ml}`;
			if(this.show==2){
				document.getElementById("section_one_footer").children[4].style.display="none";
			}
		},
	},
}
</script>

<style>
#section_one ul{
	list-style: none;
}
#section_one a{
	text-decoration: none;
	color: #333333;
}
#section_one button{
	outline: none;
	border: none;
}
/*让主页面1楼居中*/
#section_one{
    /*合并时请注释本句宽度，并解放下一句*/
    width: 1000px;
    /* width: 100%; */
    margin:0 auto;
    margin-top: 3rem;
}
/*让主页面1楼上半部水平排布，两端对齐*/
#section_one_header{
    display: flex;
    justify-content: space-between;
}
/*设置主页面1楼上半部的四个div共有样式*/
#section_one_header>div{
    height: 7rem;
    background-color: #f9f9f9;
}
#section_one_header>div>div{
    height: 2rem;
    background-color: #efefef;
    line-height: 2rem;
    padding-left: 1.25rem;
}
#section_one_header>div>ul{
    height: 4rem;
    /*设置#section_one_header>div>ul弹性布局且左对齐，宽度不足时自动换行*/
    display: flex;
    flex-wrap: wrap;
    justify-content: left;
    margin: 0.5rem;
    background-color: #f9f9f9;
}
#section_one_header>div>ul>li{
    margin-right: 0.5rem;
}
#section_one_header>div>ul>li>a{
    padding: 2px;
    /*进行过渡会在鼠标移开后留下一条线*/
}
/*最好别把这两句变成内联样式*/
#section_one_header>div>ul>li>a.hot{
    color:#e6685b;
}
#section_one_header>div>ul>li>a.more{
    color:#609fbf;
}
#section_one_header>div>ul>li>a:hover{
    color: #fff;
    background-color: #609fbf;
    border-radius: 10%;
}
/*为主页面1楼上半部的四个div分别设置样式*/
#section_one_header>div:nth-child(1){
    width: 20rem;
}
#section_one_header>div:nth-child(1)>div{
    border-left: 4px solid #ffdda7;
}
#section_one_header>div:nth-child(2){
    width: 20rem;
}
#section_one_header>div:nth-child(2)>div{
    border-left: 4px solid #92e0ca;
}
#section_one_header>div:nth-child(3){
    width: 9rem;
}
#section_one_header>div:nth-child(3)>div{
    border-left: 4px solid #a69fe3;
}
#section_one_header>div:nth-child(4){
    width: 9rem;
}
#section_one_header>div:nth-child(4)>div{
    border-left: 4px solid #98b9e0;
}
/*设置主页面1楼下半部分定宽，弹性布局，使内部三个div水平排布*/
#section_one_footer{
    width: 1000px;
    height: 168px;
    display: flex;
    margin-top: 2rem;
    /*帮助按钮定位*/
    position: relative;
    overflow: hidden;
}
#section_one_footer>div{
	width: 1000px;
}
#section_one_footer>div>div{
    height: 168px;
	/*帮助存放类型的子div定位*/
	position: relative;
}
/*为主页面1楼下半部--轮播区域下三个可视区域下的共计18个div(#section_one_footer>div>div，以下注释简称轮播小块)设置样式，*/
/*18个轮播小块的样式是完全一致的*/
#section_one_footer>div>div+div{
	margin-left: 20px;
}
/*section中还有许多同样结构的，通过以下类名共享样式*/
.con{
	width: 100%;
	display: flex;
    justify-content: space-between;
}
.cad{
    width: 150px;
    height: 258px;
    background-color: #f9f9f9;
}  
.tas{
    width: 150px;
    height: 18px;
    display: flex;
    justify-content: space-between;
    font-size: 1rem;
    margin-top: 0.25rem;
}
.tit{
    line-height: 18px;
    color: #333;
    overflow: hidden;
	text-align: left;
}
.tit:hover{
    color: #609fbf;
}
.sco{
    color: #d13013;
}
.det{
    width: 150px;
    height: 18px;
    text-align: left;
    color: #949494;
    font-size: 1rem;
    margin-top: 0.25rem;
}
/*轮播小块有五个儿子，依次是图片、片名和分数、简介、类型、蒙板*/
#section_one_footer>div>div>img:nth-child(1){
	width: 150px;
	height: 113px;
}
#section_one_footer>div>div>div:nth-child(4){
	width: 34px;
	height: 20px;
	background-color:#d13013;
	position: absolute;
	top: 0;
	left: 116px;
}
#section_one_footer>div>div>div:nth-child(5){
	width: 100%;
	height: 45px;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.6) 0, rgba(0, 0, 0, 0.0001) 100%);
	position: absolute;
	top: 69px;
	left: 0;
}
/*为主页面1楼下半部分的两个按钮设置样式*/
#section_one_footer>button{
	/*让button大一点足够放内部的文字*/
    width: 3rem;
	height: 168px;
	position: absolute;
	font-size: 3rem;
	border: none;
	color: rgba(255,255,255,0.5);
	/*防止按钮被遮挡*/
	z-index: 11;
}
/*注意nth-child的序号问题*/
#section_one_footer>button:nth-child(4){
    text-align: left;
	background: linear-gradient(to right,rgba(0,0,0,0.3) 0,rgba(0,0,0,0.0001) 100%);
	display: none;
}
#section_one_footer>button:nth-child(5){
    left: 952px;
    text-align: right;
	background: linear-gradient(to right, rgba(0,0,0,0.0001) 0,rgba(0,0,0,0.3) 100%);
}
</style>