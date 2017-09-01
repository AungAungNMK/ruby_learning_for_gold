code = <<END
10.times do |i|
    puts i
end
END
puts RubyVM::InstructionSequence.compile(code).disasm
#puts 2 + 2
code = <<END
def complex(a,b,*args,c)
    a + b + args.size + c
end
END
puts RubyVM::InstructionSequence.compile(code).disasm