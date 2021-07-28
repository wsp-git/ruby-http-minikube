# http_server.rb
require 'socket'
server = TCPServer.new 80

while session = server.accept
  request = session.gets
  puts request

  method, path, version = request.lines[0].split

  session.print "HTTP/1.1 200\r\n"
  session.print "Content-Type: text/html\r\n"
  session.print "\r\n"

  if path == "/healthcheck"
    session.print "OK"
  else
    session.print "Well, hello there!"
  end

  session.close
end