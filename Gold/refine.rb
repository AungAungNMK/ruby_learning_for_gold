class Quote
    def display
        puts "The quick brown box"
    end
end

module AllCaps
    refine Quote do
        def display
            puts "The Quick Brown Box For Jump over the Lazy Dog"
        end
    end
end
Quote.new.display
using AllCaps
Quote.new.display
class C 
    def foo
        puts "C#foo"
    end
    def bar 
        foo 
    end
end 
module M 
    refine C do 
        def foo 
            puts "c#foo in M"
        end
    end
end
using M 
x = C.new 
x.foo
x.bar
module M2
    def method1; 1; end
end
class C2
    include M2
    extend M2
end
p C2.method1 #1
c2 = C2.new
p c2.method1 #1