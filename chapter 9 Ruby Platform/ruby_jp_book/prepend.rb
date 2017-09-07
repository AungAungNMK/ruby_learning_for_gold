module M1
    def method1; "m1"; end
end
class C1
    prepend M1
    def method1; "c1"; end
end
class C2
    include M1
    def method1; "c2"; end
end
print C1.new.method1 #m1
print C2.new.method1# c2
print C1.ancestors #M1,c1,object,kernel,basicobject
print C2.ancestors #c2,m1,object,kernel,basicobject
