# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', ->
  $("table tbody tr").on 'click', (event) =>
    href = $(event.target).parent().data("href")
    if (href)
      window.location = href
)
  
  