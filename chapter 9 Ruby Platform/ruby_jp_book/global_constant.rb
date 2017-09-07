$v1 = 1
class Quiz
    $v2 = 2
    def method1; $v1; end
    def method2; $v2; end
end
puts Quiz.new.method1
puts Quiz.new.method2
puts "Constant Variable"


@v11 = 1
class Quiz
    @v22 = 2
    def method1; @v11; end
    def method2; @v22; end
end
puts Quiz.new.method1
puts Quiz.new.method2
puts "Constant Variable called in method are nil"
