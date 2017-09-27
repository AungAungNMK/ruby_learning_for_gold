module Bar
    def methodA
        @a 
    end
end
class Foo
    def initialize(b)
        @b = b 
    end
    
end

p Bar.ancestors 
p Bar.instance_methods
#p Bar.new #method error 
class Fooxt < Foo
    def initialize(a,b)
        @a, @b = a,b 
    end
    include Bar
end
fooe = Fooxt.new(3,4)
p fooe.methodA
module M1
    def method1; 1; end
end
class C1
    def method1; 2; end
    include M1
end
p C1.new.method1 #1 :is the class have no method name: method1 else the result from the class
foo1 = Foo.new(1)
singletone_class = class << foo1
self
end
p singletone_class
foo2 = Foo.new(1)
class << foo2
    def methodC; @b + 200; end
end
p foo2.methodC #201
class C1
    p self
    def method1
        self
    end
end
c1 = C1.new
p c1
p c1.method1
p c1 == c1.method1
class C2
    def method1
        def method2
        end
    end
end
p C2.instance_methods(false) #method1
p C2.new.method1 #method2
p C2.instance_methods(false) #[:method1, :method2]
foo3 = Foo.new(1)
class << foo3
    include Bar
end
p foo3.methodA
foo4 = Foo.new(1)
foo4.extend(Bar)
p foo4.methodA
=begin
v1 = 1
class Quiz
    p v1
end #name error

v1 = 1
class Quiz2
    v2 = 2
    def method1; v1; end
    def method2; v2; end
end
p Quiz2.new.method1 # undefined local variable or method `v1' for
p Quiz2.new.method2
=end
$v1 = 1
class Quiz2
   $v2 = 2
    def method1; $v1; end
    def method2; $v2; end
end
p Quiz2.new.method1 # 1
p Quiz2.new.method2 #2
p "instant var : they need getter and setter for set and get the value."
@v1 = 1
class Quiz3
    @v2 = 2
    def method1; @v1; end
    def method2; @v2; end
end
p Quiz3.new.method1 #nil
p Quiz3.new.method2 #nil
module MM
    A = 1
    class B
        A = 2
    end
    class C 
    end
end
p MM::A #1
p MM::B::A #2
module MM
    p A  #1
    p B::A #2 
end
module MM 
    p ::MM::A  #1
    p ::MM::B::A  #2
end
p MM.constants #[:A, :B, :C]
p MM::B.constants #:[A]
p MM::C.constants #[]
module MM
    class C 
        p A 
    end
end
#1
class Foo1 
    A = 1
end
module Bar1 
    B = 2
end
class FooExt < Foo1
    include Bar1
    p A 
    p B 
end
#1
#2
module MM
    def self.const_missing(id)
        1
    end
end
p MM::Hoge #1
