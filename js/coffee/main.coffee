$ ->
  # Auto set up SRCs for lazyload.js
  $('img').attr 'data-original', ->
    $(@).attr 'src'

  # Auto set up SRCs for HiSrc.js
  $('img').attr 'data-1x', ->
    $(@).attr 'src'
  .attr 'data-2x', ->
    $(@).attr('src').replace('.', '@2x.')
  .attr 'src', 'img/placeholder.png'

  $('img').hisrc()

  # Copy main nav html into the sticky nav
  $('#nav').clone().attr('id', 'nav-two').appendTo('#sticky-nav > .container')

  # Toggle sticky nav when scrolling to the top of the nav
  $(document).scroll ->
    if $(document).scrollTop() >= $('#nav').offset().top
      $('#sticky-nav').show()
    else
      $('#sticky-nav').hide()

  # Nav jump to
  $('#nav > li, #nav-two > li').click ->
    $('html, body').animate
      scrollTop: $("##{$(this).html()}").offset().top

  # Set up slideshow
  $('#slides').slidesjs
    width: 1000
    height: 638
    navigation:
      active: false
      effect: 'slide'
