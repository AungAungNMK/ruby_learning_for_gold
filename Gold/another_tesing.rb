sym = :string
p sym.id2name
p "0 == nil?:  #{0==nil?}"
p "0.nil?: #{0.nil?}"
p "1.1.coerce(1): #{1.1.coerce(1)}"
r = 1/3r
p "r.coerce(2):#{r.coerce(2)}"
p "derived object and substring are tainted."
Greeting  =  "Hello  Ruby"  
Greeting  =  "Hi  Ruby"  
p  Greeting
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
begin
    puts "2" + 1
rescue
    puts "Error"
rescue TypeError
    puts "TypeError"
ensure
    puts "Ensure!"
end
