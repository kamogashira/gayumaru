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
  //プルダウンメニューから「がゆまーるについて」ページへのスクロール
  $(function () {
    $('#to_introducion').click(function() {
      $('html,body').animate({
        scrollTop : $('#introduction').offset().top
      }, 'slow');
      return false;
    });
  });
  //プルダウンメニューから「ご利用の流れ」ページへのスクロール
  $(function () {
    $('#to_flow').click(function() {
      $('html,body').animate({
        scrollTop : $('#flow').offset().top
      }, 'slow');
      return false;
    });
  });
  //プルダウンメニューから「アクセス」ページへのスクロール
  $(function () {
    $('#to_access').click(function() {
      $('html,body').animate({
        scrollTop : $('#access').offset().top
      }, 'slow');
      return false;
    });
  });


});

