require(['jquery'], function($){ 
  $(document).ready(function() {
    var changeImage = function(srcKey) {
      return function() {
        $(this).attr('src', $(this).attr(srcKey));
      }
    };
    $('nav img')
      .on('mouseenter', changeImage('data:hover-src'))
      .on('mouseleave', changeImage('data:regular-src'));
  });
});