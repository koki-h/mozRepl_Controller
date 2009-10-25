require 'lib/arduino_io'
require 'lib/mozrepl'

input = ArduinoIO.new(7)
puts "Using COM#{input.port_no}. OK."
controller = MozReplCon.new(input)
controller.wait
