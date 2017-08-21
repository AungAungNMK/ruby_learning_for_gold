class Mudule
    def attributes(hash)
        hash.each_pair do |symbol, default|
            getter = symbol
            setter = :"@#{symbol}"
            define_method getter do
                if instance_variable_defined? variable
                    instance_variable_get variable
                else
                    default
                end
            end
        define_method setter do |value|
            instance_variable_set variable,value
        end
    end
end
def calss_attrs(hash)
    eigenclass = class << self; self; end
    eigenclass.class_eval {attributes(hash)}
end
private :attributes,:calss_attrs
end



