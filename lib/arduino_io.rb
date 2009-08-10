require 'lib/wincom'

class ArduinoIO
  def initialize(port_no=nil)
    if port_no
      @io = Serial.new
      @port_no = port_no  #COMポートの番号
      @io.open(@port_no,0x0000,9600,8,0,0,256,256)
    end
    raise 'Arduino is not connected.' unless @io
  end
  def read
    @io.receive
  end
  def port_no
    @port_no
  end
end
