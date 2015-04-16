watchID = undefined
geoLoc = undefined
window.Interval = undefined
window.counter = 0

window.getLocationUpdate = ->
  if navigator.geolocation
    options = 
      enableHighAccuracy: true
      timeout: 5000
      maximumAge: 3000
    geoLoc = navigator.geolocation
    watchID = geoLoc.watchPosition(showLocation, errorHandler, options)
  else
    alert 'Sorry, browser does not support geolocation!'
  # window.Interval = setInterval (->
  #   getLocation1()
  # ), 1000

window.getLocation1 = ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition showLocation
  else
    alert 'Geolocation is not supported by this browser.'
  return

window.showLocation = (position) ->
  latitude = position.coords.latitude
  longitude = position.coords.longitude
  userId = $('button.start').data('id')
  if window.counter == 5
    window.counter=0 
    $.ajax
  	  url: "http://fypdatagather.herokuapp.com/users/#{userId}/locations"
  	  type: 'post'
  	  contentType: 'application/json'
  	  dataType: 'json'
  	  data: JSON.stringify({"location": {"long": longitude, "lat": latitude}})
  	  success: (data) ->
  	    $('span').html data
  window.counter += 1
  #alert 'Latitude : ' + latitude + ' Longitude: ' + longitude
  #console.log 'ok'

window.stopWatch = ->
  geoLoc.clearWatch watchID
# window.stopWatch = ->
#   clearInterval window.Interval

window.errorHandler = (err) ->
  if err.code == 1
    alert 'Error: Access is denied!'
  else if err.code == 2
    alert 'Error: Position is unavailable!'
  return