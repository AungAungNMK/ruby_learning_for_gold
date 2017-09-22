class Hash
    #allow hash value to be queried and set as if they were atribures
    #we simulate attribures getter and setter for any key
    def method_missing(key, *args)
        text = key.to_s
        if text[-1, 1] == "="
            self[text.chop.to_sym] = args[0]
        else
            self[key]
        end
    end
end
h = {}
h.one = 1
puts h.one #1
#Default implementation of method_missing, in the Kernel module, simple raises a NoMethodError.
#method_missing hook is one of the most powerful of Ruby's dynamic caabilities, an one of the most commonly used metaprogramming techniques.
### Setting Method Visibility
String.class_eval {private :reverse}
#"hello".reverse # it will show NoMethodError: private method reverse
#################################
#privat_class_method and public_class_method
#.make all Math method private
#2.now we have to include Math inordef to invlove its method
p Math.private_class_method *Math.singleton_methods #Math


