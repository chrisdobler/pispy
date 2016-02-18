![Bunny Logo](/bunny.jpg "Bunny Logo")

INTRODUCTION

Raspberry Pi Pet Interaction Camera Client Connector built in Ruby on Rails.

This is the client side connector for PeepMyPet.com. It is meant to run locally on your Raspberry Pi Controller and send the feed to the remote site.

The eventual goal is to send the cam stream into a website (PeepMyPet.com - not yet live) which allows you to show off your pets on a live feed and allow other people to rate your pet and potentially interact with your pet (feeding, playing, etc..) using the gpio pins on the Raspberry Pi.

The current iteration uses an MJPG-streamer to copy jpeg streams to the browser. In the final version the stream will be pushed from the Pi to PeepMyPet to show off your pet to the world.



INSTALLATION

Install mjpg-streamer

	make clean all
	sudo apt-get install cmake
	sudo apt-get install libjpeg62-dev or libjpeg8-dev


	export LD_LIBRARY_PATH=.
	./mjpg_streamer -o "output_http.so -w ./www" -i "input_raspicam.so"



HARDWARE REQUIREMENTS

The minimum requirements are a Raspberry Pi Model B or better, and a CPI connected camera.

![Hardware](/hardware.jpg "Hardware")

Logo Design by Matthew Lawson of DOLA http://dolainc.com
