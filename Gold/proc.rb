def func a,b
    a + yield(b, 3)
end
p func(1,2) {|x,y| x + y } #6
def func 
    return 1 if block_given?
    2
end
p func(){} #1
p func #2
proc = Proc.new{|x| p x }
proc.call(1) #1
def get_counter start
    Proc.new{|up| start += up}
end
count_up =get_counter(1)
p count_up.call(1) #2
p count_up.call(3) #5
def func x
    x + yield
end
proc = Proc.new{2}
p func(1, &proc) #3 :2 + 1
def func x, &proc
    x + proc.call
end
p = func(1) do
    3
end
p p #4 :3 + 1
#lambda lambda 
lmd = lambda{|x| p x }
lmd = ->(x){ p x }#lambda format
 lmd.call(1) #1
 def func
     proc= Proc.new{return 1}
     proc.call
     2
end
p func #1
def func
    proc = lambda{ return 1}
    proc.call
    2
end
p func #2 :this is lambda
p "Difference between Proc and lambda."
p1 = Proc.new{|x,y| y }
p proc.call(1) #nil
l1 = lambda{|x,y| y }
#p l1.call(1) #Argumnt Error
l2 = ->(x,y){p x + y }
l2.call(2,3) #5
[1,2,3].each do |value| 
    p value
end #1,2,3
[3,4,5].each_with_index do |v,i|
    p v + i
end #3,5,7 :3 + 0, 4 + 1, 5 + 2
{:a => 1, :b => 2, :c => 3 }.each_key do |k|
    p k 
end # :a,:b,:c
{:a => 1, :b => 2, :c => 3 }.each_value do |k|
    p k 
end # 1,2,3
2.upto(4) do |i|
    p i
end
5.downto(1) do |i|
    p i
end#5..1
4.times do |i|
    p i 
end #0,1,2,3
t = Thread.new do 
    p "start"
    sleep 5
    p "end"
end
p "wait"
t.join #"wait";"start";"end"
3.times do |i|
    Thread.start(i) do |index|
        p ":thread-#{index} start"
    end
end