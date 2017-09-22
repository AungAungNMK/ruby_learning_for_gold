class Object
    def bindings
        binding #predefined kernel method
    end
end
class Test
    def initialize(x) ; @x = x ; end
end
t = Test.new(10) #@x = 10
puts eval("@x",t.bindings)
    

