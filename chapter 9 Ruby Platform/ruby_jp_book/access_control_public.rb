class A
 
 def public_method
   p "public method in A"
   protected_method
   private_method
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
 
a = A.new
a.public_method