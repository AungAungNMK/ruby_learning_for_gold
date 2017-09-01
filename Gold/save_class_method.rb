class Mathematician
    def first_name
        @first_name
    end
end
class Mathematician
    def self.class_method
        puts "This is a class method"
    end
end
class Mathematician
    class << self
        def class_method
            puts "this is a class method"
        end
    end
end
obj = Mathematician.new
puts obj.class_method
