#you can't test thi becoz this is only sample'
module Functional
    def apply(enum)
        enum.map &self
    end
    alias | apply
    def reduce(enum)
        enum.inject &self
    end
    alias <= reduce
end
class Proc; include Functional;end
class Method;include Functional; end
#functin to add number
sum = lambda{|x,y| x+y}
#sum.reduce(a) or a.inject(&sum)
mean = (sum<=a)/a.size
#function to compute difference from mean
deviation = lambda{|x| x-mean}
square = lambda{|x| x*x}
standardDeviation = Math.sqrt((sum<=square| (deviation|a))/(a.size-1))
