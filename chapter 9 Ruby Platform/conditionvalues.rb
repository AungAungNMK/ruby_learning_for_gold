require 'thread'
class Exchanger
    def initialize
        @first_value = @second_value = nil
        @lock = Mutex.new
        @first = Mutex.new
        @second = ConditionVariable.new
    end
    def exchange(value)
        @lock.synchronize do # only one thread can call this method at a time
            if @first.try_lock #first_thread
                first_value = value #first_thread argument
                @second.wait(@lock) #wait for second thread
                @first.unlock       #get ready for the next exchange
                @second_value       #return the second thread value
            else
                @second_value = value #store the second thread value
                @second.signal        #tell the first thread we are here
                @first_value          #return the first thread value
            end
        end
    end
end
puts Exchanger.new
                

