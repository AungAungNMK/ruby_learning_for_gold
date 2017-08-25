#puts "Enter the array "
a = ['a','b','c']
a.each { |elt| print elt }
puts 
a.reverse_each {|e| print e }
puts 
#a.cycle {|e| print e }
a.each_index{|i| print i }
puts 
a.each_with_index{|v,i| print v,i}
print a.map{|v| v.upcase}
print a.map! {|v| v.upcase}
print a.collect { |a| a.downcase!} #is a synonym for map

#searching methods
a = %w[h e l l o ]
puts a.include? ('e') #true
puts a.include?('w') #false
puts a.index('l') #2
puts a.index('L') #nil
puts a.rindex('l') #3
puts a.rindex{ |c| c =~ /[aeiou]/} #4 :index of last vowel

#sorting 
print a.sort #["e", "h", "l", "l", "o"]
print a 
puts 
print a.sort!
print a 
a = [1,2,3,4,5]
puts 
print a.sort! {|a,b| a%2 <=> b%2 } #[2, 4, 3, 1, 5] :compare element module

#shuffling array

a = [1,2,3]
print a.shuffle

