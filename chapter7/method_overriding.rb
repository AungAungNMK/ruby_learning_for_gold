class WorldGreeter
    def greet
        puts "#{greeting} #{who}"
    end
    def greeting
        "Hello"
    end
    def who
        "World"
    end
end
class SpanishWorldGreeter < WorldGreeter
    def greeting
        "Hola"
    end
end
puts SpanishWorldGreeter.new.greet
puts "----------------------------------------------------------"
class AbsractGreeter
    def greet
        puts "#{greeting} #{who}"
    end
end
class WorldGreeter1 < AbsractGreeter
    def greeting; "Hello"; end
    def who; "Worlld"; end
end
puts WorldGreeter1.new.greet


