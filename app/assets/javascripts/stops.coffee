# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.getSingleLoc = ->
	geolocation()

window.getLocation = ->
	if navigator.geolocation
		navigator.geolocation.getCurrentPosition showPosition
	else
		alert 'Geolocation is not supported by this browser.'
	return

window.showPosition = (position) ->
	latitude = position.coords.latitude
	longitude = position.coords.longitude
	user_id = $('li.get-loc').data('uid')
	stop_id = $('li.get-loc').data('sid')

	alert 'Latitude : ' + latitude + ' Longitude: ' + longitude
	# $.ajax
	#   url: "https://fyp-lets-gather-data.herokuapp.com/users/#{user_id}/stops/#{stop_id}"
	#   type: 'post'
	#   contentType: 'application/json'
	#   dataType: 'json'
	#   data: JSON.stringify({"stop": {"long": longitude, "lat": latitude}})
	#   success: (data) ->
	#     $('h1').html data