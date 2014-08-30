ready = ->
  pathname = window.location.pathname;
  if(pathname == "/")
    $('ul.nav.navbar-nav li.index-nav,ul.list-group li.index-nav').addClass('active')
  if(pathname == "/apply-writer")  
    $('ul.nav.navbar-nav li.apply-nav,ul.list-group li.apply-nav').addClass('active')


$(document).ready(ready)
$(document).on('page:load',ready)
  