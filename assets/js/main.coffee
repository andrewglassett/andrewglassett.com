require.config
  paths:
    jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min'
    fitvid: '/js/vendor/fitvids'
    modal: '/js/vendor/modal.min'
    particle: '/js/vendor/jquery.particleground.min'


  shim:
    fitvid:
      deps: ['jquery']
    modal:
      deps: ['jquery']
    particle:
      deps: ['jquery']

require ['jquery', 'fitvid', 'modal', 'particle'], ($) ->


  $("#home").particleground
  dotColor: "#000000"
  lineColor: "#000000"

  $('.video, #modal').fitVids()
  
  $(document).ready ($) ->
  $('#accordion').find('.accordion-toggle').click ->
    #Expand or collapse this panel
    $(this).next().slideToggle 'fast'
    #Hide the other panels
    $('.accordion-content').not($(this).next()).slideUp 'fast'
    return
  return

  #open modal
  $('#play-video').on 'click', -> $('#modal').modal()

  #remove and reinsert video on close
  $("#modal").on $.modal.BEFORE_CLOSE, ->
    iframe = $('iframe#video')
    iframe.remove()
    $('.fluid-width-video-wrapper').append(iframe)

  #close modal with esc key
  $(document).keyup (e) -> $.modal.close() if e.keyCode is 27
