def invoke(&b)
    b.call
end
def invoke
    Proc.new.call
end
succ = lambda {|x| x + 1}
succ = ->(x){x + 1}
p succ.call(2) #3
def compose(f,g)
    ->(x) {f.call(g.call(x))}
end
succSquare = compose(->x{x+1}, ->x{x*x})
p succSquare.call(4) #17
#data.sort{|a,b| b-a} #block version
#data.sort &->(a,b){b-a} #lambda literal version
f = Proc.new{|x,y| 1.0/(1.0/x + 1.0/y)}
p z = f.call(1,2) #0.66666
p z = f[2,3] #1.2
p z = f.(2,3)#1.2
p lambda{||}.arity #0
p lambda{|x| x}.arity#1
p lambda{|x,y| x+y}.arity#2
p lambda{|*args|}.arity #-1
p lambda{|first, *rest|}.arity #-2
p lambda{|first,*second, rest|}.arity #-3
p lambda{|x| x*x } == lambda{|x| x*x } #false
p = lambda{|x| x*x }
q = p.dup
p p == q #true
p p.__id__ == q.__id__ #false
def test
    puts "Enter in methods"
    1.times {p "Entering block"; return }
    p "Existing methods"
end
test #Enter in metods 
     #Entering block
def test
    puts "Enter in methods"
    p = Proc.new {p "Entering block"; return }
    p.call
    p "Existing methods"
end
test #Enter in metods 
     #Entering block
def procBuilder(message)
    Proc.new {p message; return}
end
def test
    puts "Enter in methods"
    p = procBuilder("Entering proc")
    p.call
    p "Existing methods"
end
#test #Entering Proc
     #Local Jump Error
def test
    puts "Enter in methods"
    p = lambda{p "Entering proc"; return}
    p.call
    p "Existing methods"
end
test #Enter in method 
     #Entering proc
     #Existing Methods
def lambdaBuilder(message)
    lambda{puts message; return}
end
def test
    puts "Enter in methods"
    p = lambdaBuilder("Entering proc")
    p.call
    p "Existing methods"
end
test #Enter in method 
     #Entering proc
     #Existing Methods
=begin
-> break not work in Proc. it will cause LocalJUmpError.
-> break just act like return in lambda
=end
def test
    puts "Enter test method"
    p = lambda {p "Entering proc"; break }
    p.call
    p "Existing test methods"
end
test #Enter test method 
     #Entering proc
     #Existing test Methods
def test
    puts "Enter in methods"
    p = Proc.new { p "Entering proc"; break }
    p.call
    p "Existing methods"
end
#test #Entering Proc
     #Local Jump Error
p = Proc.new {|x,y| p x,y}
p.call(1) #1,nil
p.call(1,2) #1,2
p.call(1,2,3) #1,2
p.call([1,2]) #1,2
l = lambda{|x,y| p x,y}
 #l.call(1) #wrong number of arguemnts 
 l.call(1,2) # 1,2
 l.call(*[1,2]) #1,2
 #l.call([1,2]) #wrong number of arguemnts 
 def accessor_pair(init =nil)
     value = init
     getter = lambda { value }
     setter = lambda{|x| value = x}
     return getter,setter
end
getX, setX = accessor_pair(0)
p getX[] #0
setX[10]
p getX[] #10
=begin
def multipliers(*args)
    x = nil
    args.map {|x| lambda{|x| x*y}}
end
double,triple = multipliers(2,3)
p double.call(2)
=end
m = 0.method(:succ)
p m.call #1
def square(x); x*x; end
p (1..10).map(&method(:square))
plus = Fixnum.instance_method("+")
p plus_1 = plus.bind(2)
p sum = plus_1.call(2) #4
p plus_3 = plus_1.unbind.bind(3).call(2) #5
=begin
Polymorphism comes form the greek words ‘polys’ meaning much or many and ‘morphe’ meaning form or shape.
    In programming, it refers to the ability to use functions or methods in different ways for different 
    objects or data types
=end
a = [1,2,3,4,5]
p a.size
p mean = a.inject{|x,y| x+ y} / a.size #3 :15/5
p sumofSquare = a.map{|x| (x-mean)**2}.inject{|x,y| x + y} #10 :4,1,0,1,4
p standardDerivation = Math.sqrt(sumofSquare/(a.size-1)) #1.1414
module Functional
    def apply(enum)
        enum.map &self
    end
    alias | apply
    def reduce(enum)
        enum.inject &self
    end
    alias <= reduce
end
class Proc; include Functional; end
class Method; include Functional; end
p sum = lambda {|x,y| x + y}
p mean = (sum<=a)/a.size #3
p deviation = lambda{|x| x - mean }
p square = lambda{|x| x*x}
p standardDerivation = Math.sqrt((sum<=square|(deviation|a))/(a.size-1)) #1.141421