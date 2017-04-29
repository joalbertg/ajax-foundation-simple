###$ ->
  xhr = new XMLHttpRequest()

  xhr.onreadystatechange = ->
    if xhr.readyState is 4
      $('#ajax').html xhr.responseText

  xhr.open 'GET', 'jumbotron.html'
  $boton = $('#boton')

  @sendAjax = ->
    xhr.send()
    $boton.hide()
###
###
$ ->
  $boton = $('#boton')

  @sendAjax = ->
    $.get 'jumbotron.html', (response) ->
      $('#ajax').html response
      $boton.hide()
###

$ ->
  $boton = $('#boton')

  @sendAjax = ->
    $('#ajax').load 'jumbotron.html'
    $boton.hide()
