puts "test the break in Proc.new"
def test
    puts "Entering test method"
    p = Proc.new { puts "proc"; break }
    p.call
    puts "Existing"
end
test
puts "test the break in proc that is created with &"
def iterator(&p)
    puts "Enering Proc"
    p.call
    puts "Existing"
end
def test
    iterator { puts "Enter proc"; break }
end
test
puts "testing break in lambda"
def test
    puts"Enter in lambda"
    l = lambda { puts "Lambda"; break ; puts "Existing"}
    l.call
end
test


