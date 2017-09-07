class Q4
    attr_accessor :v3
    def method1; @v3; end
end
var = Q4.new
var.v3 = 3
puts var.v3
puts var.method1
class Q4Ext < Q4
end
q4ext = Q4Ext.new
q4ext.v3 = 4
print q4ext.v3
puts q4ext.method1