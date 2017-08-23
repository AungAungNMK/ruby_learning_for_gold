# creating time objects
puts Time.now
puts Time.new #a synonym for Time.now
puts Time.local(2007,7,8) #july 8 ,2007
puts Time.local(2007,7,8,9,10)#july 8 ,2007, 9:10 AM, local time
puts Time.utc(2007,7,8,9,10) #9:10 UTC 
puts Time.gm(2007,7,8,9,10,11)#9:10:11 GMT (same as UTC)

puts t = Time.utc(2000,12,31,23,59,59,999999) #2000-12-31 23:59:59 UTC

#components of a time
puts t.year
puts t.month
puts t.day
puts t.wday #day of the week :0 is sunday
puts t.yday # 366, :DAY OF THE YEAR
puts t.hour # 23
puts t.min #59
puts t.sec #59
puts t.usec #999999
puts t.zone #UTC :time zone name

#get all component  in an array
print value = t.to_a #[59, 59, 23, 31, 12, 2000, 0, 366, false, "UTC"]
# array of this can be passed to the Time.local and Time.utc
value[5]+=1
print  Time.utc(*value)
puts 
#Time zone and daylight saving time 
puts "ZONE:::"
puts t.zone
puts t.utc?
puts t.utc_offset #UTC is o second offset from utc
puts t.localtime # +0630 for local
puts t.zone
puts t.gmtime #convert back to UTC
puts t.getlocal #return a new time
puts t.getutc#return a new one
puts t.isdst #flase :UTC does not DST
puts t.getlocal.isdst  # false no daylight savingtimein winter

#weekday predict????
puts t.sunday? #true
puts t.monday? #flase
puts t.wednesday? #false and ....

#formatin time and date
print t.to_s
puts 
print t.to_s
puts
print t.ctime #Sun Dec 31 23:59:59 2000 :this is the another basic format
puts 
# strirng interpolates date and time components into the template string
puts t.strftime("%Y-%m-%d %H:%M:%S") #2000-12-31 23:59:59
puts t.strftime("%H:%M") #23:59 :24-hourss format
puts t.strftime("%I:%M %p") #11:59 PM :12-hours format 
# local dependent format 
puts t.strftime("%A, %B %d ") #Sunday, December 31 # A=day of the week ,b = month, d = day
puts t.strftime("%a, %b %d %y ") #Sun, Dec 31 00 :2-digit year 
print "small %x: "
puts t.strftime("%x") # 12/31/00 :localdependent format 
print "large %X: "
puts t.strftime("%X") #23:59:59 :only time in hours mins.sec 
puts t.strftime("%c") #Sun Dec 31 23:59:59 2000

 
