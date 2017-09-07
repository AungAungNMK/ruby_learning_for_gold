class Foo
    def initialize(a)
        @a = a
    end
    def method1
        @a
    end
end
class FooExt < Foo
    def initialize(a,b)
        #@a = a
        @b = b
        super a
    end
    def method2(c)
        @a + @b + c
    end
end
fooext = FooExt.new(3,4)
puts fooext.method1
puts fooext.method2(5)
foo1 = Foo.new(1)
foo2 = Foo.new(2)
puts foo1.method1
puts foo2.method1
puts foo1.class == Foo
puts FooExt.superclass
print Foo.ancestors
puts
print FooExt.ancestors
puts Foo < Object
puts Foo > Object
print "Instance Method from Foo Calss:"
puts Foo.instance_methods(false)
print "Instance Method from FooExt Calss:"
puts FooExt.instance_methods(false)
print "Instance var from Foo Calss:"
puts foo1.instance_variables
print "Instance var from FooExt Calss:"
print fooext.instance_variables
class Hoge
    def huga1; end
    def huga2; end
    alias :huga3 :huga1
    undef :huga2
    def method_missing(m, *args)
        print "called:" + m.to_s
        super
    end
end
puts Hoge.new.no_method
puts 
print Hoge.instance_methods(false)