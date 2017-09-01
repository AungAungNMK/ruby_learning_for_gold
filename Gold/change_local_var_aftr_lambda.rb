def message_function
    str = "Quick Block"
    func = lambda do |l|
                puts "#{str} jump over the lazy #{l}."
            end
    str = "The silly brown box"
    func
end
function_value = message_function
function_value.call('dog')