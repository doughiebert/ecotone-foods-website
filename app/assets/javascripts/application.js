require(['jquery'], function($){ 
  $(document).ready(function() {
    //$(".rating input:radio").attr("checked", false);
    $('.rating input').click(function () {
      $(".rating span").removeClass('checked');
      $(this).closest('span').addClass('checked');
    });
  });
});