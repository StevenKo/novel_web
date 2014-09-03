ready = ->
  pathname = window.location.pathname;
  if(pathname == "/")
    $('ul.nav.navbar-nav li.index-nav,ul.list-group li.index-nav').addClass('active')
  if(pathname == "/apply-writer")  
    $('ul.nav.navbar-nav li.apply-nav,ul.list-group li.apply-nav').addClass('active')


$(document).ready(ready)
$(document).on('page:load',ready)
  


reload_masonry = ->
  $container = $('.pin-wrapper');
  $container.masonry({
    itemSelector: '.panel.pin'
  });

  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_posts_url = $('#infinite-scrolling .next_page a').attr('href')
      if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('#infinite-scrolling .pagination').html(
          '<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
        $.getScript more_posts_url
      return

$ ->  
  reload_masonry
  window.setTimeout(reload_masonry, 100);
  window.setTimeout(reload_masonry, 300);
  window.setTimeout(reload_masonry, 1000);
  window.setTimeout(reload_masonry, 2000);
  window.setTimeout(reload_masonry, 3000);