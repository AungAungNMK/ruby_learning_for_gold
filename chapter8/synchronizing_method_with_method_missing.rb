require 'thread'
def synchronized(o)
    #o.mutex.synchronize { yield }
    if block_given?
        o.mutex.synchronize { yield }
    else
        SynchronizedObject.new(o)
    end
end
class SynchronizedObject < BasicObject
    def initialie(o); @degelate = 0; end
    def _delegate; @degelate; end
    def method_missing(*args, &block)
        @degelate.mutex.synchronize {
            @degelate.send *args, &block
        }
    end
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
