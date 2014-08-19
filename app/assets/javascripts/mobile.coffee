$ ->
  all           = $ '#mobile-wrapper, #push-container'
  mobileBtn     = $ '.js-mobile-btn'
  mobileMenu = ->
    mobileBtn.click (e) ->
      e.preventDefault()
      all.toggleClass 'active'
      $(this).find('i').toggleClass 'fa-bars fa-times'

  mobileClose = ->
    $('.js-close-menu').click (e) ->
      e.preventDefault()
      all.removeClass 'active'
      mobileBtn.find('i').removeClass 'fa-times' 
      mobileBtn.find('i').addClass 'fa-bars'

  mobileMenu()
  mobileClose()
