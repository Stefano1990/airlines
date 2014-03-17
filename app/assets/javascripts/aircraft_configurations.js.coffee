# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#first-seats').bind 'change', ->
    first_seats = parseInt $('#first-seats').val()
    business_seats = parseInt $('#business-seats').val()
    if business_seats + first_seats > 150
      business_seats = Math.floor(150 - first_seats*3)
    $('#business-seats').val(business_seats)