class Point
    def initialize(*coordinate)
        @coordinate = coordinate
    end
    def initialize_copy(original)
        @coordinate = @coordinate.dup
    end
end
class Season
    NAMES = %w { Spring Summer Winter}
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
    private_class_method :clone
    private :dup, :clone
end
