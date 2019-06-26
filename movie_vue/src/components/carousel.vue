<template>
    <!-- swiper -->
    <swiper :options="swiperOption" class="myswiper">
      <swiper-slide>
        <img src="../../public/img/index/carsuo1.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo2.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo3.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo4.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo5.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo6.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo7.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo8.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo9.jpg" alt>
      </swiper-slide>
      <swiper-slide>
        <img src="../../public/img/index/carsuo10.jpg" alt>0
      </swiper-slide>
      <div class="swiper-pagination top" slot="pagination"></div>
      <div class="swiper-button-prev" slot="button-prev"></div>
      <div class="swiper-button-next" slot="button-next"></div>
    </swiper>
</template>


<script>
export default {
  data() {
    return {
      swiperOption: {
        slidesPerView: 1,
        spaceBetween: 0,
        loop: true,
        autoplay:{
            //delay:1000,设置图片切换时间
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        }
      }
    };
  }
};
</script>

<style scoped>
/* 设置轮播适配图片宽度 */
.myswiper {
  width: 1000px;
}
/* 设置圆点位置 */
.swiper-pagination-fraction, .swiper-pagination-custom, .swiper-container-horizontal > .swiper-pagination-bullets{
        bottom: 30px;
}
/* .swiper-button-next, .swiper-container-rtl .swiper-button-prev{
    right: 170px;
}
.swiper-button-prev, .swiper-container-rtl .swiper-button-next{
    left: 170px;
} */
/* 设置左右箭头颜色 */
.swiper-button-next {
  background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L5%2C44l-4.2-4.2L18.6%2C22L0.8%2C4.2L5%2C0z'%20fill%3D'%23999999'%2F%3E%3C%2Fsvg%3E");
}

.swiper-button-prev {
  background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l4.2%2C4.2L8.4%2C22l17.8%2C17.8L22%2C44L0%2C22z'%20fill%3D'%23999999'%2F%3E%3C%2Fsvg%3E");
  /* %23后面六位代表颜色值 */
}
</style>
