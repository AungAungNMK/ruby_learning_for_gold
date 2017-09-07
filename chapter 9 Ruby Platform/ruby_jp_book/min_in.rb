class Foo
    def initialize(a)
        @a = a
    end
    def method1
        @a
    end
end
module Bar
    def initialize(a,b)
        @b = b
        super a
    end
    def method2(c)
        @a + @b + c
    end
    def methodA
        @a
    end
end
print Bar.ancestors
puts Bar.instance_methods
#puts Bar.new : no init :so you canot create new one
class FooExt < Foo
    include Bar
end
fooe = FooExt.new(3,4)
puts fooe.methodA
print FooExt.ancestors
print FooExt.instance_methods(false)

module M1
    def method1; 1; end
end
class C1
    def method1; 2; end
end
puts C1.new.method1


foo1 = Foo.new(1)
def foo1.methodB
    @a + 100
end
puts foo1.methodB
foo2 = Foo.new(2)
#puts foo1.methodB # no foo2.methodB defined
puts "Singleton class"
foo1 = Foo.new(1)
singleton_class = class << foo1
    self
end
print singleton_class
foo1 = Foo.new(1)
class << foo1
    def methodC; @a + 200; end
end
puts foo1.methodC
puts "Self"
class C1
    puts self
    def method1
        self
    end
end
puts c1 = C1.new
puts c1 == c1.method1
class C2
    def method1
        def method2
        end
    end
end
print C2.instance_methods(false) #[:method1]
print C2.new.method1 #
print C2.instance_methods(false) #[:method1, :method2]