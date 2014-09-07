$ ->
  body           = $ '#push-container'
  content        = $ '.right-wrapper'
  highestCol     = Math.max(body.height(), content.height())
  content.height highestCol