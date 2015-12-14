###
Index->
  Main Menu
  Smart Behaiviors
  Notifications
  Nav Bars
  Input Tools
###
$(document).on 'ready', ->

  #_______________________________________________ Main Menu
  $('.c4-menu-button').on 'click', ->
    isDisplayed = $('.c4-nav').hasClass("nav-displayed")
    if isDisplayed
      $('.c4-nav').removeClass("nav-displayed")
    else
      $('.c4-nav').addClass("nav-displayed")


  #_______________________________________________ Smart Behaiviors

  #Autoresize text area to fit its content
  textareas = document.getElementsByTagName('textarea')
  for t in textareas
    t.style.height = "1px";
    t.style.height = (t.scrollHeight)+"px"

  #_______________________________________________ Notifications

  dismissNotification = (notification) ->
    $(notification).css "opacity", "0.0"
    m = $(notification).css("margin-bottom").replace(/[^-\d\.]/g, '')
    $(notification).css "margin-bottom", "#{m-50}px"
    $(notification).nextAll('.c4-flash').each (i) ->
      m = $(@).css("margin-bottom").replace(/[^-\d\.]/g, '')
      $(@).css "margin-bottom", "#{m-50}px"
  
  $('.c4-flash').on "touchend click", ->
    dismissNotification(@)

  dismissAllNotifications = () ->
    #console.log "tada"
    $('.c4-flash').each ->
      dismissNotification(@)

  setTimeout(dismissAllNotifications, 3500)

  #_______________________________________________ Nav Bars
    
  $(window).on 'scroll', ->
    scroll_top = $(window).scrollTop();
    unless scroll_top > $('.c4-header').height()
      $('.c4-nav').removeClass 'c4-nav-scrolling'
    else
      $('.c4-nav').addClass 'c4-nav-scrolling'


  #_______________________________________________ Input Tools
    