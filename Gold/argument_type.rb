def five(a,b = 1,*args,c, &d)
    puts "Standard arguments #{a.inspect}"
    puts "Optional arguments #{b.inspect}"
    puts "Splat arguments array #{args.inspect}"
    puts "Post argument #{c.inspect}"
    puts "Block argument #{d.inspect}"
end
five(1,2,3,4,5,6) do
    puts block
end
Block Argument : when you use & in an argument list,ruby need to convert th provided block into a proc object.
Optional Argument :ruby add additiona code to the target method when you use an optional argument with a default value.
Slat Argument Array :YARV creates a new array object and collect the provided argument value into it.
Standard and Post Argument :because they need no special treatment, YARV have no special work to do.

