def message_function
    str = "Quick Block"
    lambda do |l|
        puts "#{str} jump over the lazy #{l}."
    end
end
#function_value = 
message_function.call('dog')
#function_value.call('dog')