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