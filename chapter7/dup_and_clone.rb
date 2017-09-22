class Point
    def initialize(*cor)
        @cor = cor
    end
    def initialize_copy(orig)
        @cor = @cor.dup
    end
end
p Point.new(1,2)
class Season
    NAMES = %w{ Spring Summer Autum Winter }
    INSTANCES = []
    def initialize(n)
        @n = n
    end
    def to_s
        NAMES[@n]
    end
    NAMES.each_with_index do |name,index|
        instance = new(index)
        INSTANCES[index] = instance
        const_set name, instance
    end
    private_class_method :new, :allocate
    private :dup, :clone
end
p Season.new.to_s
