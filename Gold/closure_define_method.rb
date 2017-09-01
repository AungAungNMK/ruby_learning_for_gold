class Quote
    def initialize
        @str = "The quick brown for the jump"
    end
    define_method :display do
        puts @str
    end
end
Quote.new.display