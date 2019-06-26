<template>
    <div class="sectioneight">
        <div class="tat">
            <span class="tle">系列电影</span>
            <span class="sti">更多系列影片</span>
        </div>
        <div class="con">
        <!--卡片-->
            <div class="cad" v-for="(item,index) of list" :key="index">
                <img :src="'http://127.0.0.1:3000/'+item.mimgurl" alt="">
                <!--卡片内的标题与分数-->
                <div class="tas">
                    <!--标题-->
                    <span class="tit">{{item.mname}}</span>
                </div>
                <div class="det">{{item.mcontent}}</div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            list:[],
        };
    },
    props:{
        floor:{default:""}
    },
    created(){
		var url="card";
		var obj={lm:this.floor};
        this.axios.get(url,{params:obj}).then(result=>{
			var arr=[];
			for(var i=0;i<result.data.length;i++){
				arr[i]=result.data[i];
			};
            this.list=arr;
        });
	},
}
</script>

<style>
    .sectioneight{
        width: 1000px;
        margin: 0 auto;
        margin-bottom: 2rem;
    }
</style>