module Enumerable
    def conmap(&block)
        threads = []
        self.each do |item|
            threads << Threads.new { block.call(item) }
        end
        threads.map{ |t| t.value}
    end
end
#
module Enumerable
    def concurrently
        map { |item| Thread.new {yield item}}.each {|t| t.join}
    end
end
