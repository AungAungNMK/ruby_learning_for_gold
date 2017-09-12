f = Fiber.new do
    loop do 
        puts "Hello"
        puts ' child -> parent'
        Fiber.yield
    end
end
3.times do 
    puts ' parent -> child'
    f.resume
end
