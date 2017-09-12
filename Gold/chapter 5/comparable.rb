=begin
<
<=
>
>=
between?
=end
class Sample
    include Comparable
    def initialize(value)
        @value = value
    end
    def value
        @value
    end
    def <=> (other)
        self.value <=> other.value
    end
end
p a = Sample.new(10)
p b = Sample.new(5)
p a < b  #false
p a <= b #false
p a == b 
p a > b #true
p a >= b #true
p a <=> b #1 :left side is greater
