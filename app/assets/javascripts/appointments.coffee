bindDOMEvents = ->
  $('.delete-work-item').click (e) ->
    e.preventDefault()
    $(this).parent('.work-item-fields')
      .hide()
      .find('input[type=hidden]').val('true')

$(document).ready bindDOMEvents
