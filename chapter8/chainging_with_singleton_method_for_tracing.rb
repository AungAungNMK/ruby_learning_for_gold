#require 'classtrace'
class Object
    def trace!(*methodss)
        @_traced = @_traced || []
        methods = public_methods(flase) if methods.size == 0
        methods.map { |m| m.to_sym}
        methods -= @_traced
        return if methods.empty?
        @_traced |= methods
        STDERR << "Tracing: #{methods.join(', ')}on #{object_id}\n"
        eigenclass = class << self; self; end
        methods.each do |m|
            eigenclass.class_eval %Q{
                def #{m}(*args, &block)
                begin 
                    STDERR << "Entering: #{m}(\#{args.join(', ')})\n"
                    result = super
                    STDERR << "Existing: #{m} with \#{result}\"
                    result
                rescue
                    STDERR << "Aborting: #{m}: \#{$!.class}: \ #{$!.message}"
                    raise
                end
            end
            
        }
    end
end
def untrace!(*methods)
    if methods.size == 0
        methods = @_traced
        STDERR << "Untracing all methods on #{object_id}\n"
    end
    @_traced -= methods
    (class << self; self; end).class_eval do
        methods.each do |m|
            remove_method m
        end
    end
    if @_traced.empty?
        remove_instance_variable :@_traced
    end
end
end
