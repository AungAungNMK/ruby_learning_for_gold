require 'prime'
def divisors(n)
  n.prime? ? "#{n} is prime" : (2...n).select{|i|n%i==0}
end