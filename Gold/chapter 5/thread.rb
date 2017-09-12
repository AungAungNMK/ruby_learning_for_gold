p t = Thread.new { sleep 1 }
p t = Thread.new(3) {|t| sleep t }
t = Thread.new{ sleep 100}
p t .status
p t.alive?
t2 = Thread.new do 
    Thread.stop
    p "ok"
end
p t2.run
=begin
kill / exit
kill! / exit!
Thread.kill
Thread.exit
=end
t1 = Thread.new do 
    Thread.exit
end
p t1.run
t3 = Thread.new do 
    begin
        sleep 10000
    ensure
        p "killed"
    end
end
p t3.kill
t4 = Thread.new{ Thread.pass; raise "Raise Exception"}
e = Thread.new do 
    begin
        t4.join
    rescue => ex 
        p ex.message
    end
end
Thread.new{ sleep 1; Thread.main.raise "Error"}; begin; sleep; rescue => ex; puts ex.message; end
p t5 = Thread.new {Thread.stop}
#p Thread.stop
 #p Thread.list
 t6 = Thread.new {Thread.stop}
 #Thread.list
 #Thread main
 p Thread.main
 t7 = Thread.new{ sleep 100}
 p Thread.current
 t8 = Thread.new{Thread.pass; raise "Raise Exception"}
 p t.status
#p Thread.critical
t9 = Thread.new {Thread.pass; 10.times {|i| puts i **2; sleep 1}}; t9.join 
t10 = Thread.new(10000) { |t| sleep t}
t10.priority
t.priority = 1000
t = Thread.current
t[:foo] = 'bar'
p t[:foo]
 p t.key?(:foo)
 p t.keys
 