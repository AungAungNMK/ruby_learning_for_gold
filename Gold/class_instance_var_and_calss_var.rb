class Mathematician
    @type = "Generic"
    def self.type
        @type
    end
end
class Statistician < Mathematician
    @type = "Statistician"
end
puts Statistician.type
puts Mathematician.type
puts "The another test::"
class Mathematician
    @@type = "Generic"
    def self.type
        @@type
    end
end
class Statistician < Mathematician
    @@type = "Statistician"
end
puts Mathematician.type
puts Statistician.type
