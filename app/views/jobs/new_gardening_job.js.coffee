new_job_window = $("#modal_window");
new_job_window.html("<%= j render 'gardening_form' %>");

$("#next_link").on click: ->
  $(".employer_section_form").hide "slide"
  setTimeout 300
  $(".job_section_form").show "slide"

$("#back_link").on click: ->
  $(".job_section_form").hide "slide"
  setTimeout 300
  $(".employer_section_form").show "slide"