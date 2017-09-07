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
b.protected_method rescue p "Cant access protected method outside the class"
b.private_method rescue p "Cant access private method outside the class"