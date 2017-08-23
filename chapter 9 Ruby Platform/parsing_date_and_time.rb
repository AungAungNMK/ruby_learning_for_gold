#require 'parsedate'
=begin
include DateTimet
datestrng = "2001-01-01"
puts values = DateTime.parse(datestrng)
t = Time.local(*values)
s= t.ctime #
Time.local(*parsedate(s)) == t #true
s = "2000-01-01 00:00:00-0500"
v = parsedate(s)
t = Time.local(*v)
=end

#Time arithematic
 now = Time.now
 past = now - 10
 future = now + 10
 future- past #10
past <=> future #-1
past < future #true
now >= future #false
now == now #true
class Numeric
    #convert time interval to seconds 
    def milliseconds; self/1000.0; end
    def seconds; self; end
    def minutes; self * 60; end
    def hours; self*60*60; end
    def days; self*60*60*24; end
    def weeks; self*7*24*60*60; end
    #convert seconds to other interval 
    def to_milliseconds; self * 1000 ; end
    def to_seconds; self; end
    def to_minutes; self/60.0;end
    def to_hours; self/(60*60.0); end
    def to_days; self/(60*60*24.0); end
    def to_weeks; self/(60*60*24*7.0); end
end
puts expires = now + 10.days #10 days from now
puts expires - now #864000.0 seconds 
puts (expires - now).to_hours #240.0 hours
print "Time.now using to_i===>:"
puts t = Time.now.to_i #1503471385 seconds 
puts Time.at(t)  #2017-08-23 13:26:25 +0630
puts t = Time.now.to_f #1503471385.8788512
puts Time.at(t) #2017-08-23 13:26:25 +0630



