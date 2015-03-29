watchID = undefined
geoLoc = undefined
window.Interval = undefined

window.getLocationUpdate = ->
  window.Interval = setInterval (->
    getLocation1()
  ), 1000

window.getLocation1 = ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition showLocation
  else
    alert 'Geolocation is not supported by this browser.'
  return

showLocation = (position) ->
  latitude = position.coords.latitude
  longitude = position.coords.longitude
  userId = $('button.start').data('id')
  # $.ajax
	 #  url: "https://fyp-lets-gather-data.herokuapp.com/users/#{userId}/locations"
	 #  type: 'post'
	 #  contentType: 'application/json'
	 #  dataType: 'json'
	 #  data: JSON.stringify({"location": {"long": longitude, "lat": latitude}})
	 #  success: (data) ->
	 #    $('h1').html data
  #alert 'Latitude : ' + latitude + ' Longitude: ' + longitude
  console.log 'ok'

window.stopWatch = ->
  clearInterval window.Interval