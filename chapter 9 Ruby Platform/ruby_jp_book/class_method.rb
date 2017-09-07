class Foo; end

puts foo_calss = Foo.class #Class
puts Someclass = Class.new #someclass
puts Someclass.new #
class Class
    def c_method1
        1
    end
end
print Foo.c_method1 #1
puts String.c_method1 #1
puts Object.c_method1 #1

# using self
class Foo
    def self.c_method2; 2; end
end
puts Foo.c_method2

#
class Foo
    def Foo.c_method3; 3; end
end
puts Foo.c_method3

#
class Foo
    class << self
        def c_method4; 4; end
        def c_method5; 5; end
    end
end
print Foo.c_method4
print Foo.c_method5
FoocExt = Class.new(Foo) do 
    def initialize(a, b)
        @b = b
        super(a)
    end
    def method2(c)
        @a + @b + c
    end
end
