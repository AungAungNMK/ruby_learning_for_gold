/for/.match("The quick brown for jumped over the lazy dog.\n")
puts "Value of $& in the top level scope: #{$&}"
str = "The quick brown for jumped over the lazy dog.\n"
/for/.match(str)
def search(str)
    /dog/.match(str)
    puts "Value of $& in inside method: #{$&}"
end
search(str)
puts "Value of $& in the top level scope: #{$&}"
puts "Anoter test"
/quick/.match(str)
2.times do 
    /dog/.match(str)
    puts "Value of $& in inside block: #{$&}"
end
puts "Value of $& in the top level scope: #{$&}"