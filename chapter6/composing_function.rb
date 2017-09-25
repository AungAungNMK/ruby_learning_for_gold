module Functional
    def compose(f)
        if self.respond_to?(:arity) && (self.arity == 1)
            lambda { |*args| self[f[*args]]}
        else
            lambda{|args| self[*f[*args]]}
        end
    end
    alias *compose
end
#use of comose with method object