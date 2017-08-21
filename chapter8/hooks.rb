def Object.inherited(c)
    puts"class #{c} < #{self}"
end
module Final
    def self.included(c)
        c.instance_eval do
            def inherited(sub)
                raise Exception, "Attempt t ocreate subcass #{sub} of the final class #{sellf}"
            end
        end
    end
end
#this is not so easy o understant 
def String.method_added(name)
    puts "New instance mehod #{name} is added to the Stirng"
end
#############################
def String.singleton_method_added(name)
    puts "new class method #{name} is added to he string"
end
###########################################
module Strict
    def singleton_method_added(name)
        STDERR.puts "Wrning: SIngleton #{name} added to teh strict object"
        eigenclass = class << self; self; end
        eigenclass.class_eval { remove_method name}
    end
end
###########################################################
#method_missing and const_missing are also behaves like hook method in this chapter.
