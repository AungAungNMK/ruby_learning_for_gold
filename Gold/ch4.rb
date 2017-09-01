def add(a: 1, b: 2)
    a + b
end
puts add(a: 2, b: 3)
#attr_accessor,attr_reader and attr_writer
def InstanceVariable
    attr_reader :var
    attr_writer :var
    attr_accessor :var
    def var
        @var
    end
    def var=(val)
        @var = val
    end
end
#hash and keyword argument
class Hash 
    def key?(val)
        puts "Looking fr #{val}"
        false
    end
end

    def add_two(a: 2, b: 5)
        a + b
    end
#end
puts add_two(a: 1)
#
code = <<END
def add_two(a: 1, b: 1)
    a + b
end
puts add_two(b: 6)
END
puts RubyVM::InstructionSequence.compile(code).disasm
