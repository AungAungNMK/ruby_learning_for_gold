#Constant defined in Enclosing module are preference to Constants defined in included module.
#the modules included by a class are searched before superclass of teh class
#the Object class is a part of inheritance hierarchy of all classes
#the kernel module i ancestors of Object,means that Constant defined in kernel behave like top-level Constant but can be overwritten by true top
#-level Constant


module Kernel
    A = B = C = D = E = F = "defined in kernel"
end
 A = B = C = D = E = "defined in top level"
 class Super
    A = B = C = D = "defined in superclass"
end
module Included
     A = B = C = "defined in included module"
end
module Enclosing
     A = B = "defined in Enclosing"
class Local < Super
    include Included
    A = "defined locally"
    search = (Module.nesting + self.ancestors + Object.ancestors).uniq
    puts A
    puts B
    puts C
    puts D
    puts E
    puts F
end
end

#see explanation in loopup algorithm

    

    
    
    
    