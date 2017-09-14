require 'thread'
@m = Mutex.new 
@g = 0
def mutex_test 
    local = @g
    sleep 1
    @g = local + 1
    print "#{@g}, "
end
a = Thread.new{
    5.times{
        @m.lock
        begin
            mutex_test
        ensure
            @m.unlock
        end
    }
}
b = Thread.new{
    5.times{
        @m.lock
        begin
            mutex_test
        ensure
            @m.unlock
        end
    }
}
a.join
b.join
puts  
#1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
#new :Mutex.new
#lock. try_lock/ locked?
#unlock
#synchronize{...}