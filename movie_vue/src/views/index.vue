<template>
    <div>
        <myHeader></myHeader>
        <carousel></carousel>
        <!--传参提高组件重用-->
        <sectionone floor="floor1"></sectionone>
        <carousel2F></carousel2F>
        <sectiontwo floor="floor3"></sectiontwo>
        <sectionthree floor="floor4"></sectionthree>
        <sectionthree floor="floor5"></sectionthree>
        <carousel6F></carousel6F>
        <sectiontwo floor="floor7"></sectiontwo>
        <sectionfour floor="floor8"></sectionfour>
        <sectionfour floor="floor9"></sectionfour>

        <myFooter></myFooter>
    </div>
</template>

<script>
import carousel from '../components/carousel'
import sectionone from '../components/sectionone'
import sectiontwo from '../components/sectiontwo'
import sectionthree from '../components/sectionthree'
import sectionfour from '../components/sectionfour'
import carousel6F from '../components/carousel6F'
import carousel2F from '../components/carousel2F'

export default {
    data(){
        return{}
    },
    components:{
        carousel,
        sectionone,
        sectiontwo,
        sectionthree,
        sectionfour,
        carousel2F,
        carousel6F,
    }
}
</script>

<style>

</style>
