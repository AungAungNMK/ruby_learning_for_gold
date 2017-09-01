arr = []

f = Fiber.new {
  arr << "A"
  Fiber.yield "B"
  Fiber.yield "C"
  Fiber.yield "D"
}

arr << "X"
arr << f.resume
arr << "Y"

p arr