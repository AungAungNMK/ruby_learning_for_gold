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
foo = Foo.new(1)
class << foo
    include Bar
end
puts foo.methodA
foo1 = Foo.new(1)
foo1.extend(Bar)
puts foo1.methodA
