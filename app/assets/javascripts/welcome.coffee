ready = ->
  pathname = window.location.pathname;
  if(pathname == "/")
    $('ul.nav.navbar-nav li.index-nav').attr('class','active')
  if(pathname == "/apply-writer")  
    $('ul.nav.navbar-nav li.apply-nav').attr('class','active')


$(document).ready(ready)
$(document).on('page:load',ready)
  