Given an array, find the int that appears an odd number of times.
There will always be only one integer that appears an odd number of times.

def find_it(seq)
  res = seq.inject(Hash.new(0) ){|key,value| key[value] += 1; key }.select{|k,v| k if v.odd? }.to_a.first
  return res[0]
end
p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])