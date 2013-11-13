$(document).ready ->
  state_cache = {}
  $('#address_country_id').change ->
    country_id = $(this).val()
    if state_cache[country_id]
      populate_states(state_cache[country_id])
    else
      $.get('/states?country_id=' + country_id, (states) ->
        state_cache[country_id] = states
        populate_states(state_cache[country_id])
      )

  populate_states = (states) ->
    $('#address_state_id').html("")
    for state in states
      $('#address_state_id').prepend("<option value='" + state.id + "'>" + state.name + "</option>")