reload_masonry = ->
  $container = $('.content-body .row');
  $container.masonry({
    itemSelector: '#marsony-item'
  });

$ ->  
  reload_masonry
  window.setTimeout(reload_masonry, 100);
  window.setTimeout(reload_masonry, 300);
  window.setTimeout(reload_masonry, 1000);
  window.setTimeout(reload_masonry, 2000);
  window.setTimeout(reload_masonry, 3000);