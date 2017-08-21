def expode
    raise "bam!" if rand(10) == 0
end
def risky
    begin
        10.times do 
            expode
        end
    rescue TypeError
        puts $!
    end
    "Hello"
end
def defuse
    begin
        puts risky
    rescue RuntimeError => e
        puts e.message
    end
end
defuse
