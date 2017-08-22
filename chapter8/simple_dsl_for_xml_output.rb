class XMl
    def initialize(out)
        @out = out
    end
    def content(text)
        @out << text.to_s
        nil
    end
    def comment(text)
        @out << "<!-- #{text}-->"
        nil
    end
    # output text wtih the name and attributes
    #it there is a block invoke it to output or return content 
    #return nil
    def tag(tagname, attributes={})
    @out << "<#{tagname}"
    attributes.each { |attr, value| @out << "#{attr}= '#{value}'"}
    if block_given?
        @out << '>'                                     #end the open
        content = yield                                 #the block to output or return content
        if content                                      # if any content return
            @out << content.to_s                        #output it as a string  
        end
        @out << "/#{tagname}"                           #clos the tag
    else
        @out << '/>'                                    #this is empty tag,so just close it
    end
    nil                                                 #return any
end
alias method_missing tag
def self.generate(out, &block)
    XML.new(out).instance_eval(&block)
end

end
#puts xml = XMl.new("output")



