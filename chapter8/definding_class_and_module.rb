M = Module.new
C = Class.new
D = Class.new(C) {
    include M
}
puts D.to_s
# when a dynamically created module or class is assigned to a constant,the name of that constant is used the name of module or class(it returned by it name and to_s methods)
