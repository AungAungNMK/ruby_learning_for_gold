def test
    puts "Entering method"
    p = lambda { puts "Entering lambda"; return }
    p.call
    puts "Existing method"
end
test
puts "Test there is no local jump error in lmbda"
def lambdaBuilder(msg)
    lambda { puts msg; return }
end
def test1
    puts "Entering method"
    l = lambdaBuilder("Entering lambda")
    l.call
    puts "Existing method"
end
test1

