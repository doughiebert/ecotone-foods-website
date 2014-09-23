require(['jquery'], function($){ 
  $(document).ready(function() {
    var toggle = function(hovering) {
      return function() {
        var origSrcKey = 'original-src';
        var $this = $(this);
        if(typeof $this.data(origSrcKey) === 'undefined') {
          $this.data(origSrcKey, $this.get(0).src);
        }
        $this.attr('src', hovering ? $this.data(origSrcKey).replace('1', '2') : $this.data(origSrcKey));
      }
    };
    $('nav img').on('mouseenter', toggle(true)).on('mouseleave', toggle(false));
  });
});