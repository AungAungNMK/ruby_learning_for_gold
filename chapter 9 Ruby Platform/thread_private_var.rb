i = 1
while i <= 3
    Thread.new{ puts i }
    i += 1
end
#4
n = 1
    1.upto(3) {|n| Thread.new { puts n }}
#1
#2
#3
