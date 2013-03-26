$ ->
  # Set up SRCs for lazyload.js
  $('img').attr 'data-original', ->
    $(@).attr 'src'

  # Set up SRCs for HiSrc.js
  $('img').attr 'data-1x', ->
    $(@).attr 'src'
  .attr 'data-2x', ->
    $(@).attr('src').replace('.', '@2x.')
  .attr 'src', 'img/placeholder.png'

  $('img').hisrc()


  class Nav
    constructor: ->
      # Clone main nav html into the sticky nav
      $('#nav').clone().attr('id', 'nav-two').appendTo('#sticky-nav > .container')

      # Nav jump to
      $('#nav > li, #nav-two > li').click ->
        $('html, body').animate
          scrollTop: $("##{$(this).html()}").offset().top

    scroll: ->
      # Toggle sticky nav when scrolling to the top of the nav
      if $(document).scrollTop() >= $('#nav').offset().top
        $('#sticky-nav').show()
      else
        $('#sticky-nav').hide()

  class Slides
    constructor: (@el) ->
      # Set up slideshow
      @el.slidesjs
        width: 1000
        height: 638
        navigation:
          active: false
          effect: 'slide'

  class Parallax
    constructor: (@el) ->
      # Set up parallax
      @el.attr('data-bottom-top', 'background-position: 0% 0%')
      @el.attr('data-top-bottom', 'background-position: 0% 200%')
      skrollr.init
        smoothScrolling: false

  parallax = new Parallax $('.page')
  slides = new Slides $('#slides')
  nav = new Nav

  $(document).scroll ->
    nav.scroll()

