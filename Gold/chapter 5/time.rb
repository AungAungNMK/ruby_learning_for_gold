p "Time.new
Time.now
Time.at
Time.mktime
Time.local
Time.gm
"
p Time.now
p Time.at(1234567890)
p Time.at(1234567890, 1234567890)
p Time.mktime(2011)
p Time.mktime(2011,8,22)
p Time.mktime(0,0,0,7,7,2011,4,188,false,"Rangoon")
p Time.gm(2011)
p Time.gm(2011,7,7)
=begin
year
mon / month
day / mday
hour
min
sec
usec / tv_sec
wday
yday
zone
isdst / dst?
gmt? / utc?
gmt_offset / gmtoff
=end
p t = Time.mktime(2011,1,2,3,4,5,6)
p t.year
p t.mon
p t.day
p t.hour
p t.min
p t.sec
p t.usec
p t.wday
p t.yday
p t.dst?
p t.gmt?
p t.gmtoff
p t.gmtoff / 3600
=begin
localtime
gmtime
getlocal
getgm / getutc
=end
p t.localtime
p t.gmtime
p t.__id__
t1 = t.getlocal
p t1.__id__
p t + 60*60*3
p t - 60*60*3
t1 = Time.mktime(2017,1,2,3,4,5,6)
t2 = Time.mktime(2017,1,2,3,4,5,6,7)
p t1 - t2
=begin
to_i / tv_sec
to_a
to_f
to_s
strftime
=end
t = Time.mktime(2011,1,2,3,4,5,6)
p t.to_s
p t.to_i
p t.to_f
p t.to_a
=begin
%A => Sunday,Monday,...
%a => sat,sun,.....
%B => January,February,...
%b => jan,feb,...
%c =>
%d => day 0-31
%H => hour 0-24
%I => hoer 1-12
%j => day of yeay 1-366
%M => minutes 0-60
%m => month 1-12
%p => AM or PM
%s => second 0-60
%% => %
=end

p t.strftime("%Y/%m/%d %H:%M:%S")
