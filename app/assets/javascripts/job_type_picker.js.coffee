$ ->
  moving_start_button = $("#moving_select")
  painting_start_button = $("#painting_select")
  gardening_start_button = $("#gardening_select")
  other_start_button = $("#job_select")

  moving_start_button.on click: ->
    $.getScript("/new_moving_job");

  painting_start_button.on click: ->
    $.getScript("/new_painting_job");

  gardening_start_button.on click: ->
    $.getScript("/new_gardening_job");

  other_start_button.on click: ->
    $.getScript("/new_other_job");
