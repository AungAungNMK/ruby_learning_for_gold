class Class1
    def Class1.foo
        puts "Class1"
    end
end
class Class2 < Class1
    def foo
        puts "Class2"
    end
end
puts Class2.foo
