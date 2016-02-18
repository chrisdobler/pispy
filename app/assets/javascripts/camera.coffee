# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

imageNr = 0
# Serial number of current image
finished = new Array
# References to img objects which have finished downloading
paused = false

@createImageLayer = ->
  img = new Image
  img.style.position = 'absolute'
  img.style.zIndex = -1
  img.onload = imageOnload
  img.onclick = imageOnclick
  img.src = $("#camstream")[0].src + ++imageNr
  webcam = document.getElementById('webcam')
  webcam.insertBefore img, webcam.firstChild
  return

# Two layers are always present (except at the very beginning), to avoid flicker

imageOnload = ->
  @style.zIndex = imageNr
  # Image finished, bring to front!
  while 1 < finished.length
    del = finished.shift()
    # Delete old image(s) from document
    del.parentNode.removeChild del
  finished.push this
  if !paused
    createImageLayer()
  return

imageOnclick = ->
  # Clicking on the image will pause the stream
  paused = !paused
  if !paused
    createImageLayer()
  return