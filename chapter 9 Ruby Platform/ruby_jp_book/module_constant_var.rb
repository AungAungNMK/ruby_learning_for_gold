module M
    A = 1
    class B
        A = 2
    end
    class C
    end
end

puts M::A
puts M::B::A
#can print provious data in the same module name
module M
    puts A
    puts B::A
end

print M.constants #[:A, :B, :C]
print M::B.constants #[:A]
print M::C.constants #[]
puts "Print out the constant using another format"
module M
    puts ::M::A
    puts ::M::B::A
end
module M
    class C
        puts A
    end
end
puts "Print out consant in anther class"
class Foo
    A = 1
end
module Bar
    B = 2
end
class FooExt < Foo
    include Bar
    puts A
    puts B
end
puts "definding Constant missing "
module M
    def self.const_missing(id)
        1
    end
end
puts M::Aung
puts "*Note: All class name are constant "


