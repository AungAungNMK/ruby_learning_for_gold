class XMLGrammer
    def initialize(out)
        @out = out
    end
    def self.generate(out, &block)
        new(out).instance_eval(&block)
    end
    def self.element(tagname, attributes = {})
        @allowed_attributes ||= {}
        @allowed_attributes[tagname] = attributes
        class_eval %Q{
            def #{tagname}(attributes={}, &block)
            tag(:#{tagname}, attributes, &block)
        end
        
    }
end
OPT = :opt
REQ = :req
BOOL = :bool
def self.allowed_attributes
    @allowed_attributes
end
def content(text)
    @out << text.to_s
    nil
end
def comment(text)
        @out << "<!-- #{text}-->"
        nil
end
def tag(tagname, attributes={})
    @out << "<#{tagname}"
    allowed = self.class.allowed_attributes[tagname]
    attributes.each_pair do |key,value|
        raise "unknown attributes: #{key}"unless allowed.include?(key)
        @out << " #{key}='#{value}'"
    end
    allowed.each_pair do |key,value|
        next if attributes.has_key? key
        if (value == REQ)
            raise "required atributes '#{key}' missing in <#{tagname}"
        elsif
            @out << " #{key}='#{value}'"
        end
    end
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
end

class HTMLForm < XMLGrammer
    element :form, :action => REQ,
                   :method => "GET",
                   :enctype => "application/x-www-from-urlencoded",
                   :name => OPT
    element :input, :type => "text", :name => OPT, :value => OPT,
                    :maxlength => OPT, :size => OPT, :src => OPT,
                    :checked => BOOL, :disabled => BOOL, :readonly => BOOL
    element :textarea, :rows => REQ, :cols => REQ, :name => OPT,
                       :disabled => BOOL, :readonly => BOOL
    element :button, :name => OPT, :value => OPT,
                     :type => "submit", :disabled => OPT
end                   
HTMLForm.generate(STDOUT) do
    comment "This is simple html form"
    form :name => "registration",
         :action => "http://www.example.com/regester.cpi" do
        content :"Name"
        input :name => "name"
        content "Address"
        textarea:name => "address", :rows => 6, :cols=> 40 do
            "Please enter mailing adress here"
        end
        button { "submit"}
    end
end