class CameraController < ApplicationController

	def view
		@device = Device.find_by! friendly_name: "camera1"
		@stream_address = "http://" + @device.ipv4_address + ":8080"
	end

	def settings
	end

	def guide
	end
	
end
