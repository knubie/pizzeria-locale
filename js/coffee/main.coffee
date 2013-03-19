$ ->
  # Auto set up SRCs for HiRes.js
  $('img').attr 'data-1x', ->
    $(@).attr 'src'
  .attr 'data-2x', ->
    $(@).attr('src').replace('.', '@2x.')

  # Set up slideshow
  $('#slides').slidesjs
    width: 1000
    height: 638
    navigation:
      active: false
      effect: 'slide'
