// 使用express构建web服务器
const express=require('express');
const session=require('express-session');
const bodyParser=require('body-parser');
const cors=require('cors');
/* 引入路由模块*/ 
var pool=require("./pool");


// 用cors解决跨域问题
// var app=express();
// app.use(cors({
//     origin:["http://127.0.0.1:8080","http://localhost:8081"],
//     credentials:true
// }))
var server=app.listen(5050)
// 使用body中间件
app.use(bodyParser.urlencoded({extended:false}));
// 托管静态资源
app.use(express.static('public'));
// 使用 session 中间件
app.use(session({
    secret:'随机字符串',
    cookie:{maxAge:60*1000*30},//设置 session 的有效时间，单位毫秒
    resave:false,
    saveUninitialized:true// 是否保存未初始化的会话
}));//将服务器的session，放在req.session中

app.get("/card",(req,res)=>{
    var mlm=req.query.lm;
    var sql="SELECT mname,mimgurl,mcode,mstate,mcontent FROM movielist where mlm=?";
    pool.query(sql,[mlm],(err,result)=>{
        if(err) console.log(err);
        res.write(JSON.stringify(result));
        res.end();
    })
})
app.get("/rank",(req,res)=>{
    var ranklm=req.query.lm;
    var sql="SELECT rankid,rankname,ranklm FROM ranklist where ranklm=?";
    pool.query(sql,[ranklm],(err,result)=>{
        if(err) console.log(err);
        res.write(JSON.stringify(result));
        res.end();
    })
})
app.get("/star",(req,res)=>{
    var smlm=req.query.lm;
    var sql="SELECT smname,smimgurl,smtime FROM star where smlm=?";
    pool.query(sql,[smlm],(err,result)=>{
        if(err) console.log(err);
        res.write(JSON.stringify(result));
        res.end();
    })
})
app.get("/movie",(req,res)=>{
    var m_lm=req.query.lm;
    var sql="SELECT m_name,m_imgurl,m_code,m_content FROM movie where m_lm=?";
    pool.query(sql,[m_lm],(err,result)=>{
        if(err) console.log(err);
        res.write(JSON.stringify(result));
        res.end();
    })
})
// 合并
// 获取楼层6的数据：
app.get('/card6',(req,res)=>{
    var sql="SELECT mid,mname,mimgurl,mcode,mcontent FROM movielist WHERE mlm='floor6'"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        //console.log(result);
    })
})
// 获取楼层2的数据
app.get('/card2',(req,res)=>{
    var sql="SELECT mid,mname,mimgurl,mcode,mcontent FROM movielist WHERE mlm='floor2'"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
        //console.log(result);
    })
})
// 获取二级页面的数据
app.get('/page2',(req,res)=>{
    var sql="SELECT mid,mname,mimgurl,mcode,mcontent FROM movielist WHERE mlm='flpage2'";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
