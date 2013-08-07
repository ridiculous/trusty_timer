# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jUtils.addEvent window, 'load', ()->
  email = document.getElementById('email')

  if email
    email.focus()

  bindDeleteLinks()
