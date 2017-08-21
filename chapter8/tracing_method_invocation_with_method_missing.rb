class Object
    def trace(name = "", stream = STDERR)
        TraceObject.new(self,name,stream)
    end
end
class TraceObject
    instance_methods.each do |m|
        m = m.to_sym
        next if m == :object_id || m == :_id || m == :_send_
        undef_method m
    end
    def initialize(o,name,stream)
        @o = o
        @name = name
        @stream = stream
    end
    def method_missing(*args, &block)
        m = args.shift
        begin 
            arglist = agrs.map { |a| a.aspect}.join(', ')
            @trace << "Invoking: #{@n}.#{m} (#{argslist}) at #{caller[0]}\n"
            r = @o.send m, *args, &block
            @trace << "Returning:#{r.inppect}from  #{@n}.#{m} at #{caller[0]}\n"
            r
        rescue Exception => ex
            @trace << "Rising: #{e.class}: #{e} from #{@n}.#{m}\n"
            raise
        end
    end
    def _delegate
        @o
    end
end
a = [1,2,3].trace("a")
a.reverse
puts a[2]
puts a.fetch(3)
