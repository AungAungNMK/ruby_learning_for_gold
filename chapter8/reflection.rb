module A; end
module B;include A; end
class C; include B; end
puts C < B 
puts B < A 
puts C < A
puts Fixnum < Integer
puts Integer < Comparable
puts Integer < Fixnum
puts String < Numeric
puts A.ancestors
print B.ancestors
puts "-----"
print C.ancestors
puts "----------"
print String.ancestors
puts "----------"
puts C.include?(B)
puts C.include?(A)
puts B.include?(A)
puts A.include?(A)
puts A.include?(B)
puts "----------------------------"
puts A.included_modules
puts B.included_modules
print C.included_modules
puts "--------------------------------------------"
puts "the another test"
module Greeter; def hi; "hello";end; end
s = "String object"
s.extend(Greeter)
puts s.hi
String.extend(Greeter)
 puts String.hi




