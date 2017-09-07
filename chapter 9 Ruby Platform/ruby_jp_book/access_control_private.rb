puts "Private method are inherited"
class A
  def public_method
    p "public method in A"
  end
 
protected
 
  def protected_method
    p "protected method in A"
  end
 
private
 
  def private_method
    p "private method in A"
  end
end
 
class B < A
  def public_method_in_b
    public_method
    protected_method
    private_method
  end
end
 
b = B.new
b.public_method_in_b
class Bar2
    def public_method1
        private_method1
    end
    def public_method2
        self.private_method1
    end
    private 
    def private_method1; end
end
puts Bar2.new.public_method1 
#puts Bar2.new.public_method2 #noMethod error
#the another private metod syntax
class Bar2Ext < Bar2
    public :private_method1
end
#Bar2.new.private_method1
Bar2Ext.new.private_method1 