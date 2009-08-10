require 'net/telnet'

class MozReplCon
  def initialize(arduino_io)
    @aio  = arduino_io
    @telnet = Net::Telnet.new({
      "Host" => "localhost",
      "Port" => 4242
    }){|c| print c}
  end

  def wait
    count = 0
    while 1 do
      data = @aio.read
#      puts data if data
      case data
      when 'O'
        @telnet.cmd("content.location.reload(true)")
      when 'U'
        @telnet.cmd("content.scrollBy(0,-50)")
      when 'D'
        @telnet.cmd("content.scrollBy(0,50)")
      when 'R'
        @telnet.cmd("gBrowser.mTabContainer.advanceSelectedTab(1, true)")
      when 'L'
        @telnet.cmd("gBrowser.mTabContainer.advanceSelectedTab(-1, true)")
      end
    end
  end
end
