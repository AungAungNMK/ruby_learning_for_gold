puts 0.zero? #true
puts 1.0.zero? #false
puts 0.0.nonzero? #nil
puts 1.nonzero? #1
 puts 1.integer? #1
 puts 1.0.integer? #false
   # puts 1.scalar? #true :not a complex number
  #  puts 1.0.scalar? #true :not complex number
   # puts Complex(1,2).scalar #false :a complex number,require 'complex' in ruby 1.8
    puts 0.even? #true
    puts 0.odd? #false
    #Float predicates
    ZERO, INF, NAN = 0.0, 1.0/0.0, 0.0/0.0 #constant for testing
    puts ZERO.finite? #true if the number finite
    puts INF.finite? #flase
    puts NAN.finite? #false
    puts ZERO.infinite? #nil :is the numeber infinite? Positive or negative?
    puts INF.infinite? # 1
    puts -INF.infinite? #-1
    puts NAN.infinite? #nil
    puts ZERO.nan? #false: th is not a number
    puts INF.nan? # false
    puts NAN.nan? #true
    #Rounding Methods
    puts 1.1.ceil #2 :take the grater one
    puts -1.1.ceil #-1
    puts 1.9.floor #1
    puts -1.9.floor #-2
   puts  1.1.round #1 :round to neares interger
    puts 0.5.round #1
    puts -0.5.round #-1
    puts 1.1.truncate #1 :chop of functional part :round towards zero
    puts -1.1.to_i #-1 :synonym for truncates
=begin
    [n.abs, n <=> 0] # absolute value and sign
    [n.abs, n.angle] #magnitute and angle
    [n.numerator, n.denominator]  #numerator and denominator
    [n.real, n.imag] #real and imaginary
=end
    puts [Float::MAX, Float::MIN] # puts some float number
    puts Float::EPSILON 