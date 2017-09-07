module M1
    def method1
        super
        puts "M1" 
    end
end
class C1
    prepend M1
    def method1
        puts "C1"
    end
end
print C1.new.method1 #C1,M1 : the output may be changed depend s on super position