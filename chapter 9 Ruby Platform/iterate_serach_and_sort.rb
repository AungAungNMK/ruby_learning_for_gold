puts "Enter the array "
a = ['a','b','c']
a.each { |elt| print elt }
a.reverse_each {|e| print e }
a.cycle {|e| print e }