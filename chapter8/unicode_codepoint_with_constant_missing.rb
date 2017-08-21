module Unicode
    def self.const_missing(name)
        if name.to_s =~ /^U([0-9a-fA-F]{4,5}|10[0-9a-fA-f])$/
        codepoint = $1.to_i(16)
       puts utf8 = [codepoint].pack("U")
        utf8.freeze
        const_set(name, utf8)
    else
        raise NameError, "Uninitialized constant: Unicode:#{name}"
    end
end
end
