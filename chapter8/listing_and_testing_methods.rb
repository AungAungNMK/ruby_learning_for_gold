 o = "a strng"
o.public_methods #name of all public methods
o.methods # same as above
o.public_methods(false) #exclude inherited methods
o.protected_methods #[],nothing
o.private_methods# all private methods
o.private_methods(false)# same as above
def 0.single; end
o.singleton_methods
String.instance_methods == "s".public_methods # true
String.instance_methods(false) == "s".instance_methods #true
String.protected_instance_methods # []
String.private_instance_methods #[initialize_copy, initialize]
Math.singleton_methods # ["acos","log2",...]
String.public_method_defined? :reverse # true
String.protected_method_defined? :reverse # flase
String.private_method_defined? :initialize # true
String.method_defined? :upcase! #true
########################################################
"Obtaining Mehtods"
"s".method(:reverse) # Method oject
String.instance_method(:reverse) #UnboundMethod Object
#########################################################
"Method Invkoing"
"hello".send :upcase
Math.send (:sin, Math::PI/2)
==>"send invokes on its receiver the method named by first argument, passing any remaining arguments to that
methods".
==>"The name 'send' derived from obect oriented idiom in which invkoing methods is called 'ending a message' "
===> global function are really privvate method of the 'object' ,we can use 'send' to invoke that methods on any object.
"hello".send :puts, "world" #it will print world




