def square(x); x*x; end
puts (1..10).map(&method(:square))
#test this code in IRb ,not ork in here