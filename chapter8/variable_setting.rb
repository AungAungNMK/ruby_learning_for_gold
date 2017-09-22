x = 1
var = "x"
puts eval(var) # 1
puts eval("var='$g'") # var to $g
puts eval("#{var} = x ") # $g = 1
puts eval(var)#1
puts "query ,set,test in on=bject"
o = Object.new
o.instance_variable_set(:@x, 0)
puts o.instance_variable_get(:@x)
puts o.instance_variable_defined?(:@x)
puts Object.class_variable_set(:@@x, 1)
puts Object.class_variable_get(:@@x)
puts Object.class_variable_defined?(:@@x)
puts String.class_eval{ class_variable_set(:@@x,1)}
puts String.class_eval{ class_variable_get(:@@x)}
#puts o.instance_eval{ remove_instance_variable :@x }
#String.class_eval{ remove_class_variable :@@x }
#Math.send :remove_const, :EPI
# when a reference is mde to an underfined constant,if there is no one, when a reference is ,
#made to an underfined constant.You can ddefine this method to return the value of the named constant
def Symbol.const_missing(name)
    name
end
puts Symbol::Test#Test
p Symbol::A #A
