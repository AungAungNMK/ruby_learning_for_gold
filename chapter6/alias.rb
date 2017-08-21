def hello
    puts "Hello World"
end
alias original_hello hello
def hello
    puts "Your attention please"
    original_hello
    puts "THs is a test"
end
