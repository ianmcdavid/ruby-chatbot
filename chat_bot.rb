require 'socket'
 
server  = 'irc.freenode.net'
port    = 6667
socket  = TCPSocket.open(server, port)
 
nickname = 'TRexBotOMG'
channel = '#cretaceous'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}" 

socket.puts "PRIVMSG #{channel} :I am so happy to be here!"
while message = socket.gets do
 
    puts message
    
    
    
    if message.match('^PING :')
    
      server = message.split(':').last
    
      puts "PONG #{server}"
    
      socket.puts "PONG #{server}"
    
    end

    if message.match("What's up?")
        puts "PRIVMSG #{channel} :Chillin, you?"
        socket.puts "PRIVMSG #{channel} :Chillin, you?"
    end

    if message.match("Making you...")
        puts "PRIVMSG #{channel} :Whoa.... Meta."
        socket.puts "PRIVMSG #{channel} :Whoa.... Meta."
    
   end
  
  