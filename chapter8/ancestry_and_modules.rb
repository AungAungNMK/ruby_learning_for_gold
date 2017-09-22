module A; end
module B; include A; end
module C; include B; end
p C < B #true
p B < A #true
p C < A #true
p Fixnum < Integer #true
p Integer < Comparable #true
p Integer < Fixnum #false
p String < Numeric #nil
 p A.ancestors #A
 p B.ancestors #[B,A]
 p C.ancestors #[CBA]
 p String.ancestors #[String, Comparable, Object, Kernel, BasicObject]
 p C.include?(B) #true
 p C.include?(A) #true
 p B.include?(A) #true
 p A.include?(A) #false
 p A.include?(B) #false
 p A.included_modules #[]
 p B.included_modules #[A]
 p C.included_modules #[B,A]
 module Greeting; def hi; "hello"; end; end;
 s = "String Object"
 s.extend(Greeting)
 p s.hi #hello
 String.extend(Greeting)
 p String.hi #hello
#Module Nesting 
module M
    class C
        p Module.nesting #M::C, M
    end
end

