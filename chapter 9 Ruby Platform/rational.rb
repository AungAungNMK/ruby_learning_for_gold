#Rational class represents Rational number.
#Division with the quo method return a Rational value if both aruments are integer.
require 'rational'
puts penny = Rational(1,100) #1/100
puts nickel = "5/100".to_r #String to Rational
dime = 10.quo 100 #Rational (1,10)
puts change = 2*dime + 3*penny
puts change.denominator
puts change.to_f
puts (nickel * dime).to_s

