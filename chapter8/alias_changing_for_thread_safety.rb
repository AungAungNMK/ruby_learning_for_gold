class Module
    def create_alias(original, prefix = "alias")
        aka = "#{prefix}_#{original}"
        aka.gsub!(/([\=\|\&\+\-\*\/\^\!\?\~\%\\<\>\[\]])/){   #strict the prefix in the original name and convert punctuation.
            num = $1[0]
            num = num.ordif num.is_a? String
            '_' + num.to_s
        }
        aka += '_' while method_defined? aka or private_method_defined? aka
        aka = aka.to_sym
        alias_method aka, original
        aka
    end
    def synchronize_method(m)                              #make an alias for unchronizing version of method
        aka = create_alias(m, "unsync")
                                                           #now define the original to invoke the alias in synchronized block
                                                           # we want teh defined method to be able to accpet block ,so we cannot use
                                                           # define_method, and must instead evaluate a string with class_eval
        class_eval %Q{
            def #{m} ( *args, &block )
            synchronized(self) { #{aka} (*args, &block ) }
        end
    }
end
end
def synchronized(*args)
    if args.size == 1 && block_geven?                       #one arguments and a block ,synchronie on the object and execute the block
        args[0].mutex.synchronize { yield }
    elsif args.size == 1 and not args[0].is_a? Symbol and not block_geven?     #with one arguments that s not a symbol and no block 
        SynchronizeObject.new(args[0])                                         #return a synchronizeObjectt Wrapper
    elsif self.is_a? Module and not block_geven?                               #case3: when invoke a module with no block, alias change the 
                                                                               #name method to add synchronization.Or, if there has no arguments,
                                                                               #then alias chain the next method defined
        if(args.size > 0)                                                      #synchronie the name method
            args.each { |m| self.synchronize_method(m)}
        else                                                                   # if no method are specified synchronize the next method defined
            eigenclass = class << self; self; end
            eigenclass.class_eval do
                define_method :method_added do |name|
                    eigenclass.class_eval { remove_method :method_added }
                    self.synchronize_method name
                end        
            end
        end
    else
        raise ArgumentError, "Invalid arguments to synchronize()"
    end
end

        
