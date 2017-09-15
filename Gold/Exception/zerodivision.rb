#Version 1
a = 0
=begin 
    b = 1/0
rescue ZeroDivisionError => e 
    p e.backtrace
=end
#["zerodivision.rb:3:in `/'", "zerodivision.rb:3:in `<main>'"]

#Version 2
=begin 
    b = 1/0
rescue ZeroDivisionError => e 
    p $!.class
    raise
    #p e.backtrace
=end
#ZeroDivisionError
#zerodivision.rb:12:in `/': divided by 0 (ZeroDivisionError)
 #       from zerodivision.rb:12:in `<main>'
=begin
    #version3
    b = 1 / 0
rescue ZeroDivisionError
    a += 1
    retry
ensure
    p b 
=end
begin
    1/0
rescue
    p 1
rescue ZeroDivisionError
    p 2
end
#1
