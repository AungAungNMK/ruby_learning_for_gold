class Object
    def trace!(*methodss)
        @_traced = @_traced || []
        methods = public_methods(flase) if methods.size == 0
        methods.map { |m| m.to_sym}
        methods -= @_traced
        return if methods.empty?
        @_traced |= methods
        STERR << "Tracing: #{methods.join(', ')}on #{object_id}\n"