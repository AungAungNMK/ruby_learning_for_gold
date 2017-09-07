class Bar
    def public_method1; 1; end
    public 
    def public_method2; 2; end
    protected
    def protected_method1; 1; end
    def protected_method2; 2; end
    private
    def private_method1; 1; end
end
puts Bar.new.public_method1
puts Bar.new.public_method2
# can't call the other becoz moethod are not publiic'
puts Bar.new.private_method1
puts Bar.new.protected_method1
puts Bar.new.protected_method2
#all the same with the above, only logic different
class Bar1
    def public_method1; 1; end
    def public_method2; 2; end
    def protected_method1; 1; end
    def protected_method2; 2; end
    def private_method1; 1; end
    public :public_method1, :public_method2
    protected :protected_method1, :protected_method2
    private :private_method1
end