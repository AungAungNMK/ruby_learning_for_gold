def test
    puts "Enter teh meaasge in Proc"
    p = Proc.new { puts "Enter the proc"; return }
    p.call
    puts "Exising Method"
end
test
puts "Test there is  local jump error in Proc"
def proBuilder(message)
    Proc.new { puts message; return }
end
def test1
    puts "Entering method"
    p = proBuilder.call("Entering Proc")
    p.call
    puts "Existing one"
end
test1


