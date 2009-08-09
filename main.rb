require 'lib/arduino_io'
require 'lib/mozrepl'

input = ArduinoIO.new(6)
puts "Using COM#{input.port_no}. OK."
controller = MozReplCon.new(input)
controller.wait
