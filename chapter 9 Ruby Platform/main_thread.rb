#wait for all thread
#main thread ) to stop running
#no new thread are started while waiting
def join_all
   
    main = Thread.main
    current = Thread.current
    all = Thread.list
    all.each {|t| t.join unless t == current or t == main }
    t.abort_on_exception = true
end
=begin
Thread and Variables
t1 = Thread.new do
    #something 
    #something
end
t2= Thread.new do 
    #some
    #some
end
=end
=begin
Thread_private Variables
    Variables defined in block of thread are private to that Thread and arer not visible to other Thread.
    n = 1
    while n <= 3
        Thread.new { puts n }
        n += 1
    end
    #4
    #4
    Private is not shared in Threads
    n = 1
    while n <= 3
        Thread.new {|x| puts x }
        n += 1
    end
    # nil :becoz of private_var
     n = 1
    1.upto(3) {|n| Thread.new {puts n}} #1
    #the vale of n private to the outer block and never changes doing execution of that block
=end
    Thread local Variables
    Thread class provide hash like behaviour .
    Unlike true hash,thread class only allow symbols as hey.
    The values associated with these symbols behaves like Thread local Variables.
    They are not private like block-local Variables becoz any thread can lookip a value in any other thread.
    
    Thread.current[:progress] = bytes_received
    total = 0
    download_thred.each {|t| total += t[:progress]}
    total = 0
    download_thred.each {|t| total += t[:progress] if t.key?(:progress)}
    


    
