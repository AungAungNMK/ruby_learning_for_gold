class Quiz2
    def v3
        return @v3
    end
    def v3=(value)
        @v = value
    end
    def method1; @v3; end
end
q4 = Quiz2.new
q4.v3 = 3
print  q4.v3
print q4.method1