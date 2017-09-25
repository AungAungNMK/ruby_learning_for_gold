#"There is a close relationship beteen symbol,method and proc."
#:to_proc
#:to_sym
p [1,2,3].map(&:succ) #2,3,4
p [1,2,3].map{|n| n.succ} #2,3,4
puts "this is original symbol.to_proc"
class Symbol
    def to_proc
        lambda { |receiver, *args| receiver.send(self, *args)}
    end
end
puts "Something wth that is related instance_method"
class Module
    alias [] instance_method
end
puts "New annotation for caling instance_method"
String[:reverse].bind("hello").call
puts "Building an unbound method can also be made simple"
class UnboundMethod
    alias [] bind
end
puts "The next one format"
p String[:reverse]["hello"][]
#first pair index
#second pair bind it
# now we are going to use [] operator for lookin up instnce_method of a class
class Module
    def []=(sym, f)
        self.instance_eval { define_method(sym, f)}
    end
end
#Enumerable.average method usage
Enumerable[:average] = lambda do
    sum, n = 0.0, 0
    self.each { |x| sum += x; n += 1 }
    if n == 0
        nil
    else
        sum / n
    end
end
class Symbol
    def []obj
        obj.method(self)
    end
    def []=(o,f)
        sym = self
        eigenclass = (class << o; self end)
        eigenclass.instance_eval {define_method(sym, f)}
    end
end
#The clever method to write y = 2 * x + 1
#y = (:+[1]*:*[2])[x]
dashes = :*['-']
p dashes[10]

