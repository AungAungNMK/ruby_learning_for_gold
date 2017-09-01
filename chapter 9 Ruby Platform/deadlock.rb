require 'thread'
m,n = Mutex.new, Mutex.new
t = Thread.new {
    m.lock
    puts "Thread t lock Mutex m ."
    sleep 1
    puts "Thred t waiting to lock Mutex n"
    n.lock
}
s = Thread.new {
    n.lock
    puts "Thread s lock Mutex n"
    sleep 1
    puts "Thread s waiting to lock Mutex m"
    m.lock
}
t.join
s.join