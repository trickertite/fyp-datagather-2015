watchID = undefined
geoLoc = undefined

showLocation = (position) ->
  latitude = position.coords.latitude
  longitude = position.coords.longitude
  $.ajax
	  url: 'http://localhost:3000/users/1/locations'
	  type: 'post'
	  contentType: 'application/json'
	  dataType: 'json'
	  data: JSON.stringify({"location": {"long": longitude, "lat": latitude}})
	  success: (data) ->
	    $('h1').html data
  alert 'Latitude : ' + latitude + ' Longitude: ' + longitude

errorHandler = (err) ->
  if err.code == 1
    alert 'Error: Access is denied!'
  else if err.code == 2
    alert 'Error: Position is unavailable!'

window.getLocationUpdate = ->
  if navigator.geolocation
    # timeout at 60000 milliseconds (60 seconds)
    options = timeout: 30000
    geoLoc = navigator.geolocation
    watchID = geoLoc.watchPosition(showLocation, errorHandler, options)
  else
    alert 'Sorry, browser does not support geolocation!'

window.stopWatch = ->
  geoLoc.clearWatch watchID