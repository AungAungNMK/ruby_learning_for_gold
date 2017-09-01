i = 0
increment_function = lambda do 
    puts "increment_function from #{i} to #{i + 1}"
    i += 1
end
decrement_function = lambda do 
    i -= 1
    puts "decrement_function from #{i+1} to #{i}"
end
increment_function.call
decrement_function.call
increment_function.call
increment_function.call
decrement_function.call
