=begin
include
included
extended
include?
included_modules
autoload
autoload?
=end
module MyMethods
    def foo
        'bar'
    end
end
class MyClass
    include MyMethods
end
p MyClass.new.foo
class MyNewClass; end
n = MyNewClass.new
n.extend(MyMethods)
 p n.foo
# n1 = NewMyClass.new
# p n1.foo #undefined method foo in NewMyclass
module MyModule
    def self.included(object)
        p "#{object} has included #{self}"
    end
end
class MyClass
    include MyModule
end
#MyClass has included MyModule
module MyModule; end
class MyClass1
    include MyModule
end
p MyClass1.include?(MyModule)
p MyClass1.included_modules
p open('D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5/module.rb').read
module MyModule
    def foo
        'bar'
    end
end
class MyClass
    autoload(:MyModule, "D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5/module.rb")
    p autoload?(:MyModule)
    include MyModule
    p autoload?(:MyModule)
end
#Module Function
module MyMethod1
    def bar
        'foo'
    end
    module_function :bar
end
p MyMethod1.bar
p Array.ancestors #[Array,Enumerable,Object,Kernel]
