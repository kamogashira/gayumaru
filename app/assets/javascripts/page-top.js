$(document).on('turbolinks:load', function(){
  var topBtn = $('#page-top');
  topBtn.hide();
  //スクロールが100に達したらボタンを表示
  $(".wrapper").scroll(function () {
    if ($(".wrapper").scrollTop() > 100) {
      topBtn.fadeIn();
      } else {
      topBtn.fadeOut();
      }
  });
  //スルスルっとスクロールでトップへもどる
  topBtn.click ( function() {
    $('.wrapper').animate({
      scrollTop: 0
      }, 500 );
      return false;
  });
});