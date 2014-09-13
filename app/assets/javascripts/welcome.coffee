ready = ->
  pathname = window.location.pathname;
  if(pathname == "/")
    $('ul.nav.navbar-nav li.index-nav,ul.list-group li.index-nav').addClass('active')
  if(pathname == "/apply-writer")  
    $('ul.nav.navbar-nav li.apply-nav,ul.list-group li.apply-nav').addClass('active')


$(document).ready(ready)
$(document).on('page:load',ready)
  



$ ->  
  if $('#with-button').size() > 0
    loading_posts = false
 
    $('#load-more-btn').show().click ->
      unless loading_posts
        loading_posts = true
        more_posts_url = $('.pagination .next_page a').attr('href')
        $this = $(this)
        $this.html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />').addClass('disabled')
        $.getScript more_posts_url, ->
          $this.text('More posts').removeClass('disabled') if $this
          loading_posts = false
      return