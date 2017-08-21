# public 
# protected
#pricate
class Widget
    def x
        @x
    end
    protected :x
    def utility_method
        nil
    end
    private :utility_method
end
#public_class_method :new
w = Widget.new
puts w.send :utility_method
puts w.instance_eval {utility_method}
puts w.instance_eval {@x}


