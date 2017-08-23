#select and find_all
print (1..8).select{|x| x%2 == 0}
puts
print (1..8).find_all{|x| x % 2 == 1 }
# reject isthe reverse of select
primes = [2,3,5,7]
print primes.reject {|x| x%2 == 0 }
puts 
# group_by is generalization of partition.
#group_by take the return value of the block and uses it as a hash key.
#it maps that key to the array of all collection elements for which the block return that value 


#Grouping programming language by their first value:
langs = %w[java perl phyton ruby]
group = langs.group_by {|l| l[0]}
print group
puts
#grep return an array of elements that match the arguments value,determining matching with the case euality operator
#(===) of the argument.
#When use with  regulaar expression ,this method work like Unix-command line utility grep.
#If the block is assiciaed with the cell.it is used to process matching elements ,as te collect or map were called on the result of grep
print langs.grep(/^p/) #["perl", "phyton"]
puts
print langs.grep(/^p/) {|x| x.capitalize } #["Perl", "Phyton"]
data = [1,16,3.0,4]
print ints = data.grep(Integer)#[1, 16, 4]
print small = ints.grep(0..9)#[1, 4]

#first :return s first elements of an Enumeratorobject or given an integer arguments n,an array containing the first n element.
#take :take behaves just like first
#take_while :returns an array of the previous element for which the block return true.
#drop:does the opposite: return all except for the first n
#drop_while :returns an array of the containing element for which the block return flase and all subsequent elements.

print (1..5).first(2)#[1,2]
print (1..5).take(3)#[1,2,3]
print (1..5).drop(3)#[4,5]
puts
print [1,2,3,nil,4].take_while {|x| x}
puts 
print [nil,1,2].drop_while{|x| !x }

