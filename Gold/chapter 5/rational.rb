a = Rational(1,2)
puts a.denominator #2
puts a.numerator #1
puts 0.25.denominator #4
puts 0.25.numerator #1

#divmod
print Rational(1,2).divmod Rational(1,3)
puts Rational(1,3).floor #0
puts Rational(1,3).ceil #1
puts Rational(1,3).truncate #0
puts Rational(1,3).round #0
puts Rational(2,3).floor #0
puts Rational(2,3).ceil #1
puts Rational(2,3).truncate #0
puts Rational(2,3).round #1
puts"round is depend on . value"