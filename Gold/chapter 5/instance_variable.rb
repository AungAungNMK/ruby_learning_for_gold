class Foo
    def initialize
        @hoge = 1
    end
end
f = Foo.new
puts f.instance_variables #hoge
puts f.instance_variable_get(:@hoge) #1
puts f.instance_variable_set(:@hoge, 2) 
puts f.instance_variable_get(:@hoge)