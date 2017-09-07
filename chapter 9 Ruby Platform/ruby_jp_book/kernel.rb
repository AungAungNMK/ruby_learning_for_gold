module Kernel
    private 
    def my_func; end
end
my_func

self.my_func # nomethod error
class Object
    private
    def my_func; end
end
my_func
self.my_func