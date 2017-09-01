class Foo
  attr_reader :var
  def initialize
    @var = "apple"
  end
end

class Bar < Foo
  def initialize
      super
    @var = "banana"
    
  end
end

bar = Bar.new
puts bar.var