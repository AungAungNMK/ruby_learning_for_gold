f = Fiber.new {
    puts "Fibers say Hello"
    Fiber.yield
    puts "Fiber says GoodBye"
}
puts "Cal Say Hello"
f.resume
puts "Call Say GoodBye"
f.resume
puts "-----------------------------------------"
f1 = Fiber.new do |msg|
    puts "call some: #{msg}"
    msg2 = Fiber.yield("Hello")
    puts "Caller said: #{msg2}"
    "fine"
end
response = f1.resume("Hello")
puts "Fiber said: #{response}"
resp2 = f1.resume("How are u?")
puts "Fiber said #{resp2}"

