class Object
    def bindings
        binding
    end
end
class Test
    def initialize(x) ; @x = x ; end
end
t = Test.new(10)
puts eval("@x",t.bindings)
    

