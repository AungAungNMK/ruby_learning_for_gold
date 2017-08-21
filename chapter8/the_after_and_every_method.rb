after 1 { puts "done" }
every 60 { redraw_clock }
#boh methods return threds objct.call kill in the return object to cancel the execution 
#Exxecution ofthe block after sleeping the specified numebr of the secons
def after(seconds, &block)
    Thread.new do#new thread
        sleep(seconds)#first sleep
        block.call#call the block
    end
end
def every(seconds, value = nil, &block)
    Thread.new do 
        loop do 
            sleep(seconds)
            value = block.call(value)
        end
    end
end



