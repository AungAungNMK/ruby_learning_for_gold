for i in [2,3,4]
    bar = i
end
p bar
=begin
[1,2,3,4].each do 
    foo = 1
end
#p foo
=end

i = 0
while (0..4) === i do
    print i
    i += 1
end
i = 0 
until i == 5 do 
    p i
    i += 1
end #0,1,2,3,4
i = 0
begin
    p i
    i += 1
end while (1..4) === i #01234
i = 0
p i += 1 while (0..4) ===i #12345
puts /Ruby/
puts %r(Ruby)
puts Regexp.new "Ruby"
p /Ruby/ === "I love Ruby" #check include or not the specified word
p /Ruby/ =~ "I love Ruby" #7 :index
p "I love Ruby" =~ /Ruby/ #7
/bb/ =~ "aabbcc" #same word they will out the result ,else nil
p $`
p $&
p $'
%r|(http://www(\.)(.*)/)| =~ "http://www.xyz.org/"
p $1 #all :"http://www.xyz.org/"
p $0 #is the file name
p $2 #.
p $3 #xyx.org
p $4 #nil
=begin
t = Thread.new do
    p "start"
    sleep 5
    p "end"
end
p "wait"
t.join
=end

3.times do |i|
    Thread.start(i) do |index|
        p "thread- #{index} start"
    end
end
f = Fiber.new do 
    (1..3).each do |i|
        Fiber.yield i
    end
    nil
end
p f.resume #1
p f.resume #2
p f.resume #3
p f.resume #nil
#p f.resume #dead fiber called
10.times do |i|
    next if i == 5
    print i, " "
end
begin
    1/0
    p 1
rescue
    p 0
end # 0 :rescue
begin
    p 1
rescue 
    p 0
else
    p 2
ensure
    p 3
end #123,begin is true so rescue not do
begin
    1 / 0
rescue ZeroDivisionError
    p $!.class
    #raise
end
a = 0
begin
    b = 1/a
rescue ZeroDivisionError
    a += 1
    retry
ensure
    p b
end #1
begin
    1/0
rescue
    print 1, "From first rescue"
rescue ZeroDivisionError
    p 1
end
def foo
    throw :exit
end
catch(:exit) {
    foo 
    p 1
}
p 2
p "######"
def bar 
    catch(:calc) do 
        throw :calc, 100
    end
end
p bar #100
