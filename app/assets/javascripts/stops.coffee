# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.getSingleLoc = ->
	getLocation()

window.getLocation = ->
	if navigator.geolocation
		navigator.geolocation.getCurrentPosition showPosition3
	else
		alert 'Geolocation is not supported by this browser.'
	return

window.showPosition3 = (position) ->
	latitude = position.coords.latitude
	longitude = position.coords.longitude
	user_id = $('li.get-loc').data('uid')
	stop_id = $('li.get-loc').data('sid')

	#alert 'Latitude : ' + latitude + ' Longitude: ' + longitude
	console.log stop_id
	# $.ajax
	#   url: "http://localhost:3000/users/#{user_id}/stops/#{stop_id}"
	#   type: 'put'
	#   contentType: 'application/json'
	#   dataType: 'json'
	#   data: JSON.stringify({"stop": {"long": longitude, "lat": latitude}})
	  # success: (data) ->
	  #   $('h1').html data