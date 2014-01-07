// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.autocomplete
//= require turbolinks
//= require_tree .


jQuery(function() {
  if ($('.pagination').length) {
    $(window).scroll(function() {
      var url = $('.pagination span.next').children().attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
        $('.pagination').text("Fetching more products...");
        return $.getScript(url);
      }
    });
  }


  $('#term').autocomplete({
    minLength: 2,
    source: 'products.json',
    response: function(event, ui) {
      for(var i = 0; i < ui.content.length; i++) {
        var item = ui.content[i];
        item.label = item.value = item.name;
      }
    },
    select: function(event, ui) {
      event.preventDefault();
      window.location.href = 'products/' + ui.item.id;
    }
  });
});