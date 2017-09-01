class Quote
    def initialize
        @str = "THis is just start of an ruby"
    end
end
def create_method_using_a_closure
    str2 = "Jump over the beginning"
    Quote.send(:define_method, :display) do
        puts "#{@str}:  #{str2}"
    end
end
create_method_using_a_closure
Quote.new.display
#
#
#
#
#
#
#
class Quote
    def initialize
        @str = "The quick brown box And "
    end
end
def create_method_using_a_closure
    str2 = "jump over the lazy dog"
    lambda do
        puts "#@str #{str2}"
    end
end
Quote.send(:define_method, :display, create_method_using_a_closure)
Quote.new.display



