<template>
    <div>
        <myHeader></myHeader>
        <!--明星介绍部分页头-->
        <div class="star_head">
            <!--背景板-->
            <img src="http://127.0.0.1:3000/img/star/banner_black.jpg" class="banner_img">
            <!--明星简介-->
            <div class="star_info">
                <!--明星头像-->
                <img src="http://127.0.0.1:3000/img/star/star_infoimg.jpg" class="star_infoimg">
                <!--简介内容-->
                <div class="star_infodet">
                    <!--中文名-->
                    <div class="star_infocn">成龙</div>
                    <!--英文名-->
                    <div class="star_infoen">Jackie&nbsp;&nbsp;Chan</div>
                    <!--职业与生日-->
                    <div class="star_infosc">
                        <span class="star_infoca">职业:&nbsp;&nbsp;导演&nbsp;&nbsp;演员</span>
                        <span class="star_infobi">出生日期:&nbsp;&nbsp;1954-04-07</span>
                    </div>
                    <!--时间轴-->
                    <div class="star_infotl">
                        <!--轴线-->
                        <div class="star_infoline">
                            <span>2020</span>
                            <hr class="hr" />
                        </div>
                        <!--时间轴内容-->
                        <div class="star_infotl_det">
                            <div class="info_cad" v-for="(item,index) of introlist" :key="index">
                                <img class="info_cad_img" :src="'http://127.0.0.1:3000/'+item.smimgurl" alt="">
                                <div class="info_cad_name">{{item.smname}}</div>
                                <div class="info_cad_mask"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="star_container">
            <ul class="star_ul">
                <li  class="star_li">作品</li>
                <li  class="star_li">图片</li>
                <li  class="star_li">新闻</li>
                <li  class="star_li">视频</li>
                <li  class="star_li">星路历程</li>
                <li  class="star_li">人物资料</li>
            </ul>
            <hr class="hr" />
            <div class="star_cs">
                <div class="star_cs_left">
                    <div class="star_intro">
                        <p>成龙的父母亲最初在法国领事馆工作，父亲是厨师，也是京剧票友。成龙小时候很喜欢打架，跟那些外国小孩子打。这种情况一直到他小学一年级，由于常打架，闹事，所以无法升级。一天，他的父亲带着成龙来到尖沙咀的美丽都大厦，拜访京剧武生于占元师傅，他正是成龙崇拜的武侠女星于素秋的父亲，成龙看到这...<a href="javascript:;">更多个人介绍&nbsp;&nbsp;&gt;&gt;</a></p>
                    </div>
                    <div class="title">
                        <span class="title_pri">视频(463)</span>
                        <span class="title_more">更多&gt;&gt;</span>
                    </div>
                    <div class="star_videos">
                        <div class="star_video" v-for="(item,index) of videolist" :key="index">
                            <img :src="'http://127.0.0.1:3000/'+item.smimgurl" class="video_img">
                            <img src="http://127.0.0.1:3000/img/star/play.png" class="play_icon">
                            <span class="video_time">{{item.smtime}}</span>
                            <div class="video_desc">{{item.smname}}</div>
                        </div>
                    </div>
                    <div class="title">
                        <span class="title_pri">图片(135)</span>
                        <span class="title_more">更多&gt;&gt;</span>
                    </div>
                    <div class="star_images">
                        <div class="star_images1">
                            <img src="http://127.0.0.1:3000/img/star/star_images1.jpg" class="star_image">
                        </div>
                        <div class="star_images2">
                            <img src="http://127.0.0.1:3000/img/star/star_images2.jpg" class="star_image">
                        </div>
                        <div class="star_images2">
                            <img src="http://127.0.0.1:3000/img/star/star_images3.jpg" class="star_image">
                            <img src="http://127.0.0.1:3000/img/star/star_images4.jpg" class="star_image">
                        </div>
                        <div class="star_images3">
                            <img src="http://127.0.0.1:3000/img/star/star_images5.jpg" class="star_image">
                        </div>
                    </div>
                    <div class="title">
                        <span class="title_pri">相关影人</span>
                    </div>
                    <div class="star_abouts" id="star_abouts">
                        <!--一个显示区域-->
                        <div class="star_abs" v-for="(list,index) of aboutlists" :key="index">
                            <div class="star_about" v-for="(item,inx) of list" :key="inx">
                                <img :src="'http://127.0.0.1:3000/'+item.smimgurl" class="about_img">
                                <div class="about_name">{{item.smname}}</div>
                                <div class="about_joinnum">合作{{item.smtime}}次</div>
                            </div>
                        </div>
                        <button @click="lbt">&lt;</button>
			            <button @click="rbt">&gt;</button>
                    </div>
                </div>
                <div class="star_cs_right">
                    <div class="title">
                        <span class="title_pri">新闻报道(307)</span>
                    </div>
                    <div class="star_news">
                        <div class="star_new">
                            <div class="new_time">2019-01-23</div>
                            <div class="new_title">春节档混战太精彩！成龙周星驰携新作第11回大PK</div>
                            <div class="new_detail">今年即将开始的电影春节档，无疑是一发大招。</div>
                            <div class="circle"></div>
                        </div>
                        <hr class="hr">
                        <div class="star_new">
                            <div class="new_time">2019-01-22</div>
                            <div class="new_title">《神探蒲松龄》曝终极预告 阮经天钟楚曦旷世之恋</div>
                            <div class="new_detail">将于2019年大年初一上映的春节档唯一合家欢电影《神探蒲松龄》近日发布了终极预告。成龙领衔主演，阮经...</div>
                            <div class="circle"></div>
                        </div>
                        <hr class="hr">
                        <div class="star_new">
                            <div class="new_time">2018-10-24</div>
                            <div class="new_title">《神探蒲松龄》曝海报剧照 成龙颠覆演绎志怪书生</div>
                            <div class="new_detail">电影《神探蒲松龄》曝光“一探奇境”版海报和剧照。剧照中蒲松龄深入云雾缭绕的竹林秘境，让人渴望一探究竟...</div>
                            <div class="circle"></div>
                        </div>
                        <button class="more_news">更多</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
	data(){
		return {
            show: "0",
            introlist:[],
            videolist:[],
            aboutlists:[[],[],[]],
		};
    },
    created(){
        var url="star";
		var obj={lm:"intro"};
        this.axios.get(url,{params:obj}).then(result=>{
			var arr=[];
			for(var i=0;i<result.data.length;i++){
				arr[i]=result.data[i];
			};
            this.introlist=arr;
        });
        var obj={lm:"video"};
        this.axios.get(url,{params:obj}).then(result=>{
			var arr=[];
			for(var i=0;i<result.data.length;i++){
				arr[i]=result.data[i];
			};
            this.videolist=arr;
        });
        var obj={lm:"about"};
        this.axios.get(url,{params:obj}).then(result=>{
			var arr=[[],[],[]];
			for(var i=0;i<result.data.length;i++){
				arr[(i-i%5)/5][i%5]=result.data[i];
			};
            this.aboutlists=arr;
        });
    },
	mounted(){
		//由于刚加载就连点两次右按钮会在第三个区域进入可视区出现bug，先模拟点击下右按钮再模拟点击下左按钮
		this.rbt();
		this.lbt();
	},
	methods:{
		lbt(){
			//点击一个按钮后一定要让另一个按钮显示才符合实际
			document.getElementById("star_abouts").children[4].style.display="block";
			this.show-=1;
			var ml=-870*this.show;
			ml=ml+"px";
			document.getElementById("star_abouts").firstElementChild.style.marginLeft=`${ml}`;
			if(this.show==0){
				document.getElementById("star_abouts").children[3].style.display="none";
			}
		},
		rbt(){
			document.getElementById("star_abouts").children[3].style.display="block";
			this.show+=1;
			var ml=-870*this.show;
			ml=ml+"px";
			document.getElementById("star_abouts").firstElementChild.style.marginLeft=`${ml}`;
			if(this.show==2){
				document.getElementById("star_abouts").children[4].style.display="none";
			}
		},
	},
}
</script>

<style scoped>
    .hr{
        width: 100%;
        border-color: #bfbfbf;
    }
    .star_head{
        width: 100%;
        height: 560px;
        min-width: 1200px;
        background-color: #f5f5f5;
    }
    .banner_img{
        width: 100%;
        height: 240px;
    }
    .star_info{
        width: 1200px;
        height: 410px;
        margin: 0 auto;
        /*透明背景*/
        background-color: rgba(255,255,255,0.05);
        margin-top: -120px;
        /*用弹性布局的话部分子元素可能会被背景板遮盖*/
        position: relative;
    }
    .star_infoimg{
        width: 300px;
        height: 410px;
        position: absolute;
        left: 0;
        transition: all 1200ms linear;
    }
    .star_infoimg:hover{
        /*鼠标悬浮时改变图像饱和度和亮度*/
        filter:saturate(130%) brightness(120%);
    }
    .star_infodet{
        width: 870px;
        height: 410px;
        position: absolute;
        right: 0;
        text-align: left;
    }
    .star_infocn{
        font-size: 2.75rem;
        color: #fff;
        margin-top: 0.5rem;
    }
    .star_infoen{
        font: 1.5rem Verdana;
        color: #fff;
    }
    .star_infosc{
        width: 870px;
        height: 60px;
        position: absolute;
        top: 120px;
        background-color: #f5f5f5;
        line-height: 60px;
        font-size: 1.25rem
    }
    .star_infosc>span+span{
        margin-left: 1rem;
        padding-left: 1rem;
        border-left: 2px solid #bfbfbf;
    }
    .star_infotl{
        width: 828px;
    }
    .star_infoline{
        width: 838px;
        position: absolute;
        top:185px;
    }
    .star_infoline>span{
        background-color: #c7b6a0;
        color: #fff;
        padding: 3px;
        border-radius: 2px;
        /*让换行符上来占位*/
        float: left;
    }
    .star_infotl_det{
        width: 838px;
        height: 180px;
        position: absolute;
        bottom: 0px;
        display: flex;
        justify-content: space-between;
    }
    .info_cad{
        width: 128px;
        height: 180px;
        /*为内部的图片、文字、蒙版提供定位基准*/
        position: relative;
    }
    .info_cad_img{
        width: 128px;
        height: 180px;
    }
    .info_cad_name{
        width: 128px;
        height: 22px;
        position: absolute;
        bottom: 0px;
        color: #fff;
        font-size: 0.75rem;
        line-height: 22px;
        text-align: center;
    }
    .info_cad_name:hover{
        color: #609fbf;
        cursor: pointer;
    }
    .info_cad_mask{
        width: 128px;
        height: 158px;
        position: absolute;
        top: 0px;
        background-color: rgb(11,11,11);
        opacity: 0.3;
        transition: all 1200ms linear;
    }
    .info_cad_mask:hover{
        opacity: 0;
    }
    .star_container{
        width: 1200px;
        margin: 0 auto;
        margin-bottom: 2rem;
    }
    .star_ul{
        width: 1140px;
        height: 80px;
        font-size: 1.75rem;
        font-weight: bold;
        line-height: 80px;
        display: flex;
        justify-content: space-between;
        margin:0 30px;
    }
    .star_li:hover{
        color:#c7b6a0;
    }
    .star_ul+hr{
        margin: 0;
    }
    .star_cs{
        width: 1200px;
        display: flex;
        justify-content: space-between;
    }
    .star_cs_left{
        width: 870px;
    }
    .star_intro{
        width:870px;
        height: 165px;
        background: url("http://127.0.0.1:3000/img/star/star_intro.png");
        display: flex;
        align-items: center;
        text-align: left;
        margin-top: 1rem;
        padding: 1rem;
    }
    .star_intro>p{
        margin:0;
        position: relative;
    }
    .star_intro>p>a{
        position: absolute;
        right: 0;
        color: #c7b6a0;
    }
    .star_intro>p>a:hover{
        text-decoration: none;
        color: #609fbf;
    }
    .title{
        width: 100%;
        height: 60px;
        display: flex;
        justify-content: space-between;
    }
    .title_pri{
        font-size: 1.25rem;
        line-height: 60px;
        font-weight: bold;
    }
    .title_more{
        font-size: 1rem;
        line-height: 60px;
        font-weight: lighter;
    }
    .title_more:hover{
        color: #609fbf;
    }
    .star_videos{
        width: 870px;
        height: 194px;
        display: flex;
        justify-content: space-between;
    }
    .star_video{
        width: 210px;
        height: 194px;
        /*为播放图标和视频时长提供定位基准*/
        position: relative;
    }
    .video_img{
        width: 210px;
        height: 118px;
        transition: all 1200ms linear;
    }
    .video_img:hover{
        /*设置图像的亮度*/
        filter:brightness(130%);
    }
    .play_icon{
        width: 36px;
        height: 36px;
        position: absolute;
        left: 6px;
        top: 76px;
        /*设置图标的对比度*/
        filter: contrast(200%);
    }
    .play_icon:hover{
        filter: contrast(100%);
    }
    .video_time{
        width: 3rem;
        height: 22px;
        position: absolute;
        right: 6px;
        top: 90px;
        font-size: 0.75px;
        line-height: 22px;
        color: #fff;
        background-color: #000;
        border-radius: 20px;
    }
    .video_desc{
        width: 210px;
        height: 60px;
        margin-top: 1rem;
        text-align: left;
        font-size: 14px;
    }
    .video_desc:hover{
        color: #609fbf;
    }
    .star_images{
        width: 870px;
        /*高度多留点，防止有图片尺寸大了*/
        height: 477px;
        display: flex;
        justify-content: space-between;
    }
    .star_images1{
        width: 316px;
        height: 413px;
    }
    .star_images2{
        width: 160px;
        height: 413px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }
    .star_images3{
        width: 222px;
        height: 413px;
    }
    .star_abouts{
        width: 870px;
        height: 277px;
        display: flex;
        position: relative;
        overflow: hidden;
    }
    .star_abs{
        width: 870px;
        height: 277px;
        display: flex;
        /*不能用弹性布局控制内部元素两端对齐，否则会使宽度被压缩*/
    }
    .star_about{
        width: 166px;
        height: 277px;
    }
    .star_about+.star_about{
        margin-left: 10px;
    }
    .about_img{
        width: 166px;
        height: 226px;
        transition: all 1200ms linear;
    }
    .about_img:hover{
        filter: saturate(130%) brightness(120%);
    }
    .about_name{
        width: 166px;
        height: 33px;
        font-size: 1rem;
        line-height: 33px;
    }
    .about_name:hover{
        color: #609fbf;
    }
    .about_joinnum{
        width: 166px;
        height: 18px;
        font-size: 14px;
        line-height: 18px;
        color: #c7b6a0;
    }
    .star_abouts>button{
        /*让button大一点足够放内部的文字*/
        width: 2rem;
        height: 60px;
        position: absolute;
        font-size: 3rem;
        border: none;
        color: rgba(255,255,255,0.5);
        /*防止按钮被遮挡*/
        z-index: 11;
        outline: none;
	    border: none;
    }
    .star_abouts>button:nth-child(4){
        top: 78px;
        text-align: left;
        background: linear-gradient(to right,rgba(0,0,0,0.3) 0,rgba(0,0,0,0.0001) 100%);
        display: none;
    }
    .star_abouts>button:nth-child(5){
        left: 838px;
        top: 78px;
        text-align: right;
        background: linear-gradient(to right, rgba(0,0,0,0.0001) 0,rgba(0,0,0,0.3) 100%);
    }
    .star_cs_right{
        width: 300px;
    }
    .star_news{
        width: 300px;
        height: 620px;
        border-left: 2px solid #bfbfbf;
        /*为按钮提供定位*/
        position: relative;
    }
    .star_new{
        width: 100%;
        height: 175px;
        position: relative;
        text-align: left;
        padding-left: 15px;
    }
    .new_time{
        width: 100%;
        height: 20px;
        position: absolute;
        top: -10px;
        line-height: 20px;
    }
    .new_title{
        width: 100%;
        position: absolute;
        top: 12px;
        font-size: 18px;
    }
    .new_title:hover{
        color:#609fbf;
    }
    .new_detail{
        width: 100%;
        position: absolute;
        top: 74px;
        font-size: 15px;
    }
    .circle{
        width: 8px;
        height: 8px;
        position: absolute;
        top: -5px;
        left: -5px;
        border: 4px solid #c7b6a0;
        border-radius: 50%;
    }
    .more_news{
        width: 270px;
        height: 40px;
        padding: 0;
        border: none;
        background-color: #f5f5f5;
        position: absolute;
        bottom: 4px;
        left: 15px;
        font-size: 14px;
        color: #888;
    }
    .more_news:hover{
        background-color: #e5e5e5;
        cursor: pointer;
    }
</style>