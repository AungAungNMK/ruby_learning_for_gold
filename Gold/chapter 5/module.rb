module Mymodule
    def foo
        'bar'
    end
end
class MyClass
    include Mymodule
end
 p MyClass.new.foo
 #
 
=begin
Module.constants
 constants
 const_defined?
 const_missing
 const_set
 const_get
 remove_const
 ancestors
=end
p Object.const_defined?(:ENV)
p Object.const_defined?(:ENVIRONMENT)
p Object.const_get(:RUBY_VERSION)
p Object.const_set(:MY_CONST, 'myconst')
p Object::MY_CONST
=begin
:==> constant MyClass::MY_CONST not defined (NameError)
class MyClass
    p remove_const(:MY_CONST)
    p MY_CONST
end
=end
p Array.ancestors # [Array, Enumerable, Object, Kernel, BasicObject]
=begin
instance_methods
public_instance_methods
protected_instance_methods
private_instacne_methods
public
private 
protected 
attr_reader
attr_writer
attr_accessor
attr 
alias_method
=end
p Array.instance_methods #so many thing will show in output

class MyClass
    private
    def foo
        p "FOO"
    end
    public :foo
end
my_class = MyClass.new
my_class.foo #FOO
class MyClass
    attr_accessor :height
end
my_class = MyClass.new
my_class.height = 200
p my_class.height #200
class MyClass
    def foo
        'foo'
    end
    alias_method :original_foo, :foo
    def foo
        'bar ' + original_foo
    end
end
m = MyClass.new
p m.foo #"bar foo"
Array.class_eval do
    def foo
        'bar'
    end
end
p [].foo #bar :don't care the array type .if the op is array
class MyClass
    CONST = 1
end
MyClass.class_exec(3) {|i| p i + self::CONST} #4
=begin
class_variables
class_variable_defined?
class_variable_get
class_variable_set
remove_class_vaarable
=end
class MyClass
    @@foo = 1
end
p MyClass.class_variables
p MyClass.class_variable_defined?(:@@foo)
class MyClass
    @@var = 'foobar'
end
def MyClass.get 
    class_variable_get(:@@var)
end
def MyClass.set=(var)
    class_variable_set(:@@var, var)
end
def MyClass.clear
    remove_class_variable(:@@var)
end
p MyClass.get
p MyClass.clear
p MyClass.class_variable_defined?(:@@var)
MyClass.set = 'new-var'
p MyClass.get 
