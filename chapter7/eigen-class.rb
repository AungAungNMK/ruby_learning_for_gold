eigen class is alo called the singleton class of metaclass.
singleton class means 'own' 'self' 'particularto' 'characteristics of'.
def Point.sum
end
class << Point
    def class_method #this is an inistantiate method of eigen class
        # and also a aclass method of point
    end
    def class_method2
    end
end
#self test example in this chapter
class Point
    class << self
    end
end
# be carefully there have considerable differnece in the follonwing line
class Point 
# this is an open class Point
end

class Point3D < Point
#subclass class of point     
end
    
        class << Point
            # eigen class of bject point
        end

# eigen for every object can get with the folloing line code
class Object
    def eigenclass
        class << self; self; end
    end
end

        

