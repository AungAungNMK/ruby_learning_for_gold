class Quote
    def display
        puts "The quick brown box"
    end
end

module AllCaps
    refine Quote do
        def display
            puts "The Quick Brown Box For Jump over the Lazy Dog"
        end
    end
end
Quote.new.display
using AllCaps
Quote.new.display