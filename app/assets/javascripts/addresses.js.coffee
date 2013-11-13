# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#address_country_id').change ->
    $.get('/states?country_id=' + $(this).val(), (countries) ->
      $('#address_state_id').html("")
      for country in countries
        $('#address_state_id').prepend("<option value='" + country.id + "'>" + country.name + "</option>")
    )