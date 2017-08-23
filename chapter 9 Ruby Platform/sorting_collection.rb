require 'set'
w = Set['apple','zanana','orange']
print w.sort
puts 
print w.sort{|a,b| b <=> a }
puts
print w.sort{ |a,b| a.casecmp(b)}
puts
print w.sort{ |a,b| b.size <=> a.size}
puts
#case insensitive sort
word = ['carrot', 'Beet', 'apple']
print word.sort_by {|x| x.downcase }
