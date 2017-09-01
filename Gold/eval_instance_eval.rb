#Eval
str = "puts"
str += " 2"
str += " +"
str += " 2"
eval(str)
#Instance_Eval
a = 2
b = 3
str = "puts"
str += " a"
str += " +"
str += " b"
eval(str)
#
10.times do 
    p a+b
end
puts "This is the end of block:"
#eval_with_binding
def get_binding
    a = 2
    b = 3
    binding
end
eval("puts a + b",get_binding)
puts
puts "An instance_eval binding"
class Quote
    def initialie
        @str = "The quick brown box"
    end
end
str2 = "jump over the lazy dog"
obj = Quote.new
obj.instance_eval do
    puts "#{str} #{str2}"
    def new_method
    end
    
end
