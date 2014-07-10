ready = ->
  pathname = window.location.pathname;
  if(pathname == "/")
    $('.nav.masthead-nav li.index-nav').attr('class','active')
  if(pathname == "/apply-writer")  
    $('.nav.masthead-nav li.apply-nav').attr('class','active')


$(document).ready(ready)
$(document).on('page:load',ready)
  