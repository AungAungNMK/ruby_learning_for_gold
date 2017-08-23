#Enumerable::Enumerator,
print e  = [1..10].to_enum
print e = "test".enum_for(:each_byte)
print e = "test".each_byte
puts 
#IF repeated application are possible, you can start and external iterator before StorIteration has been raised bu calling rewind
print "Ruby".each_char.max
puts 
iter = "Ruby".each_char
#loop { print iter.next }
puts
print iter.next # R
puts iter.rewind # forct it to restart nw
print iter.next
puts
print "Ruby".each_char.with_index{|c,i| puts "#{i}:#{c}"}

*Note 
    Give any Enumerator e, like all Enumerable Object, are splattable:you can prefix an Enumerator with an asterisk
    to expends it into individual values for methods invocation or paralel assignment.
