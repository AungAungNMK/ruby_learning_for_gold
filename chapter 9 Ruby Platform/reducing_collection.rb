print [10,100,1].min
print ['a','c','b'].max
# print [10,a,[]].min # undefined local variable or method `a' for main:Object (NameError)
#max
#max_by
langs = %w[perl java ruby phyton]
print langs.max {|a,b| a.size <=> b.size }
puts
print langs.max_by {|w| w.length }
#minmax and minmax_by :return like [min,max]
print (1..100).minmax
puts
print (1..100).minmax_by {|n| n.to_s}
puts
#all? :return true if the prediction true for all elements of the colleciton
#any? :return true if the prediction is true for any one the elements.
#none? :return true if the prediction never return a true value
#one? :return true only if the prediction return a true value for one and only one ,elements of the collecitons.
c = -2..2
puts c.all? {|x| x > 0 }
puts c.any? {|x| x > 0 }
print "For none::"
puts c.none? {|x| x > 2 } #true no vlaue grater than 2
print "For one x > 2::"
puts c.one? {|x| x > 2 } #flase
print "for one? x > 0:::"
puts c.one? {|x| x > 0 } #false
puts c.one? { |x| x == 2} #true
puts [1,2,3].all? #true :no nil or flase
puts [nil,false].any?  #false :no true value
puts [].none? # true :non-flase, non-nil
a = [1,1,2,3,5,8]
puts a.count(1) # to element equal to 1 
puts a.count {|x| x % 2 == 1 } #4 :four elements are odds.

=begin
# inject :the block associated with inject expects two arguments .
        :the first is accumulated value (argumetns)
        :the second is an element from the colleciton.
:return value after the last iteration becomes the value of inject.
=end
# How many negative number?
puts (-2..10).inject(0) {|num,x| x < 0 ? num + 1 : num }
# sum of word length
puts %w[pea queue are].inject(0) {|total,word| total + word.length }
puts sum = (1..5).inject {|total,x| total + x }
puts prod = (1..5).inject {|total,x| total * x} 
puts max = [1,3,2].inject {|m,x| m > x ? m : x }
puts [1].inject {|total,x| total + x }

# with ReExp
puts sum = (1..5).reduce(:+)
puts prod = (1..5).reduce(:*)
puts letter = ('a'..'e').reduce("-", :concat)

