module Mixin
  def greet
    puts "Hello World!"
  end
end

class SomeClass
  include Mixin
end
puts SomeClass.new.greet