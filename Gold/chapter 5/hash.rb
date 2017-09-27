a = {"apple"=> "fruit","coffee"=> "drink"}
p a.class
p Hash["apple"=> "fruit","coffee"=> "drink"]
p a = Hash.new
p a["apple"] #nil
p a = Hash.new("NIL") #nil
p a["apple"]
p a = Hash.new{|k,v| k[v] = nil}
p a["apple"] #nil
p a = Hash.new{|k,v| k[v] = "NONE"}
p a["apple"] #none
a= Hash.new("NONE")
p a.default
a.default = "Not Exists!."
p a["apple"]
=begin
[]
keys
values
values_at
fetch
select
=end
a = {"apple"=> "fruit","coffee"=> "drink"}
p a["apple"]
p a.keys
p a.values
a = { 1 => "one",2 => "two",3 => "three",4 => "four"}
p a.values_at(1,3) #values in that position
p a.fetch(5,"NONE") #NONE
p a.fetch(5) {|k,v| k%2 == 0} #false
p a.select{|k,v| k%2 == 0} #[[2 ,"two"],[4, "four"]]
=begin
[]=
delete
reject
reject!
delete_if
replace
shift
merge
update
invert
clear
=end
a = {"apple"=> "fruit","coffee"=> "drink"}
a["apple"] = "red"
p a #{"apple"=> "red","coffee"=> "drink"}
a["orange"] = "Added one"
p a #{"orange" => "added one", apple"=> "fruit","coffee"=> "drink"}
a = {"apple"=> "fruit","coffee"=> "drink"}
a.delete("apple")
p a #{"coffee"=> "drink"}
a = {"apple"=> "fruit","coffee"=> "drink"}
p a.reject{|k,v| v == "drink"}
p a 
p a.reject!{|k,v| v == "drink"}
p a #{"apple"=> "fruit"}
a = {"apple"=> "fruit","coffee"=> "drink"}
p a.__id__
p a.replace({"orange"=> "fruit","tea"=> "drink"})
p a.__id__#two object id equal if they being replace by another values 
a.shift 
p a #{"tea"=>"drink"}
p a.merge({"one"=>"test1","two"=>"test2","three"=>"test3","four"=>"test4","five"=>"test5"})
p a 
p a.merge({"one"=>"test1","two"=>"test2","three"=>"test3","four"=>"test4","five"=>"test5"}){|k,v1,v2| v1}
p a.merge!({"one"=>"test1","two"=>"test2","three"=>"test3","four"=>"test4","five"=>"test5"}) #{"tea"=>"drink", "one"=>"test1", "two"=>"test2", "three"=>"test3", "four"=>"test4", "five"=>"test5"}
p a.invert
# p {"orange" => "fruit","coffee" => "drink","apple" => "fruit","tea" => "drink"}.invert
p a.clear
=begin
length
size
empty?
has_key?
include?
key?
member?
has_value?
value?
=end
a = {"apple"=> "fruit","coffee"=> "drink"}
p a.size
p a.empty?
p a.key?("apple")
p a.key?("orange")
p a.value?("fruit")
p a.value?("me")
p a.member?("apple")
=begin
each
each_pair
each_key
each_value
=end
a = {"coffee"=> "drink","apple"=> "fruit"}
a.each_key{|k,v| p "keys: #{k}"}
a.each_value{|k,v| p "values: #{k}"} 
a = {4 => "a", 3 => "b", 2 => "c", 1 => "d"}
p a.sort #[["apple", "fruit"], ["coffee", "drink"]]
p a.sort{|a,b| a[1] <=> b[1]}
p a.to_a