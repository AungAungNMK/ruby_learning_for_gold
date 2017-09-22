# public 
# protected
#pricate
class Widget
    def x
        @x = "Ruby"
    end
    protected :x
    def utility_method
        "String"
    end
    private :utility_method
end
#public_class_method :new
w = Widget.new
puts w.send :utility_method
puts w.instance_eval {utility_method}
puts w.instance_eval {@x}


