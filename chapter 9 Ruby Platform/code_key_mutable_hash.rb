#Class does not ahve defined ther own eql? method can simply used the hash method they inherited from the project
#if you use mutable keys and mutate one of them, you must call rehash on the Hash object in order to ensure thats it works right
key = { :a=> 1}
puts h = { key => 2} #{{:a=>1}=>2}
puts h[key] #2
print key.clear #nil
puts h[key] #{}
puts h.rehash #{{}=>2}
puts h[key]#2

#miscelleneous hash method 
h = {:a=>1,:b=>2}
print h.invert # invert is the method to change the key and value position
puts

hh =  {:a=>2, :b=>3}
print hh.to_s
print hh.inspect