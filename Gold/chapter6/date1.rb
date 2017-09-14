require 'date'
p Date.parse("2011-01-01")#<Date: 2011-01-01 ((2455563j,0s,0n),+0s,2299161j)>
 p Date.parse("11-01-01").to_s #"2011-01-01"
 p Date.parse("68-01-01").to_s #"2068-01-01" #
 p Date.parse("80-01-01").to_s #1980
 p Date.parse("69-01-01").to_s #"1969-01-01" #to 2068
 p Date.strptime("2011/01/01", "%Y/%m/%d").to_s
 p Date.strptime("May 5, 2010", "%b %d, %Y").to_s
 #Date.today([start])
=begin
 year
 month
mon
day
mday
next
succ
step
downto
upto
step(limi, step){|date| ...}
downto(min){|date| ...}
upto(max){|date| ...}
=end
start_from = Date.new(2011, 07, 01)
end_to = Date.new(2011, 07, 31)
start_from.step(end_to, 7) do |date|
    p date.to_s
end
#leap? #to check leap year or not
#to_s / strftime
p DateTime.new(2011,01,01)
#civil / new
#DateTime.civil([year[, mon[, mday[, hour[, min[, sec[, offset]]]]]]])
#DateTime.new([year[, mon[, mday[, hour[, min[, sec[, offset]]]]]]])
p DateTime.new(2011,7,1,12,0,0, Rational(9,24)).to_s #"2011-07-01T12:00:00+09:00"
#DateTime.now([start])
#hour
#min
#sec
#zone
#offset
time = DateTime.new(2011,7,1,12,0,0, Rational(9,24))
p time.zone #"+09:00"
p time.offset #(3/8)
time1 = DateTime.new(2011, 11, 12)
time2 = DateTime.new(2012, 11, 12)
p t = time2 - time1 #366/1
time = DateTime.new(2011, 03, 11) 
p time << 3 ##2010-12-11
p time.to_s
