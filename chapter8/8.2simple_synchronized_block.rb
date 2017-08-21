require 'thread'
def synchronized(o)
    o.mutex.synchronize { yield }
end
class Object
    def mutex
        return @_mutex if @_mutex
        synchronized(self.class) {
            @_mutex = @_mutex || Mutex.new
        }
    end
end
puts Class.instance_eval{ @_mutex = Mutex.new }
#Object.mutex method defined above need to lock the class
#if a object does not have a mutex yet .If the class does not have it own mutex yet, then the class of the class 
# (the class Object) will be locked.
#Inorder to prevent infinite recursion, we must ensure that the class object has a mutex.
