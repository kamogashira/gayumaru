$(document).on('turbolinks:load', function(){
  //トップページの画像切り替えアニメーション
  　$('#top').slick({
    autoplay: true,
    autoplaySpeed: 3000,
    speed: 5000,
    fade: true,
  });
  //がゆまーるについてページの画像切り替えアニメーション
　$('.wrapper__section__content--box--right--image').slick({
    autoplay: true,
    autoplaySpeed: 3000,
    speed: 5000,
    fade: true,
  });
  //アクセスページの画像切り替えアニメーション
　$('.wrapper__section__content--image').slick({
  autoplay: true,
  autoplaySpeed: 3000,
  speed: 5000,
  fade: true,
  });
});

