 o = "a strng"
o.public_methods #name of all public methods
o.methods # same as above
o.public_methods(false) #exclude inherited methods
o.protected_methods #[],nothing
o.private_methods# all private methods
o.private_methods(false)# same as above
def o.single; end
o.singleton_methods
p String.instance_methods == "s".public_methods # true
p String.instance_methods(false) == "s".public_methods #true
p String.protected_instance_methods # []
p String.private_instance_methods #[initialize_copy, initialize]
p Math.singleton_methods # ["acos","log2",...]
p String.public_method_defined? :reverse # true
p String.protected_method_defined? :reverse # flase
p String.private_method_defined? :initialize # true
p String.method_defined? :upcase! #true
########################################################
p "Obtaining Mehtods"
p "s".method(:reverse) # Method oject
p String.instance_method(:reverse) #UnboundMethod Object
#########################################################
p "Method Invkoing"
p "hello".send :upcase
#Math.send (:sin, Math::PI/2)
#==>"send invokes on its receiver the method named by first argument, passing any remaining arguments to that
#methods".
#==>"The name 'send' derived from obect oriented idiom in which invkoing methods is called 'ending a message' "
#===> global function are really privvate method of the 'object' ,we can use 'send' to invoke that methods on any object.
p "hello".send :puts, "world" #it will print world