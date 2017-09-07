module Mod
    def foo
        puts "Mod"
        #super
    end
end

    class Class1
        def foo 
            puts "Class 1"
        end
    end
    
    class Class2 < Class1
        include Mod
    end
    
    puts Class2.new.foo
    #called is not in ther e: so return in mod method
    # is there is call class : retunr called class 