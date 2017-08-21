class Point 
    def initilize(*coordinate)
        @coordinate = coordinate
    end
    def marshal_dump
        @coordinate.pack("w*")
    end
    def marshal_load(s)
        @coordinate = s.unpack("w*")
    end
end
# to allow marshalling but prevent copying ,so the class as the following
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
    def _dump(limit)
        @n.to_s
    end
    def self._load(s)
        INSTANCES[Integers(s)]
    end
end
