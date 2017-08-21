class Module
    private
    def readonly(*syms)
        return if syms.size == 0
        code = ""
        syms.each do |s|
            code << "def #{s}; end\n"
        end
        class_eval code
    end
    def readwrite(*syms)
        return if syms.size == 0
        code = " "
        syms.each do |s|
            code << "def #{s}; @#{s} end \n"
            code << "def #{s} = value; @#{s} = value; end \n "
        end
        class_eval code
    end
end
