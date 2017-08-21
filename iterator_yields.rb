chars = "hello world".tap {|x| puts "Original object: #{x.inspect}"}
chars.each_char.tap{|x| puts " object: #{x.inspect}"}
chars.to_r.tap{|x| puts " to_a: #{x.inspect}"}
chars.map{|c| c.succ }.tap{|x| puts " map: #{x.inspect}"}
chars.sort.tap{|x| puts " sort: #{x.inspect}"}