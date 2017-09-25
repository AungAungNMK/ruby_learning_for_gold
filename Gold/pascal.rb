def triangle(n)
    result = []
    (0..n).each{|r|
            lst=[1]#first and 
            term=1 #last 
            k=1 #
            (0..r-1).step(1){|index|
                    term=term*(r-k+1)/k
                    lst.push term 
                    k+=1
            }
            result << lst
        }
        p result
end
triangle(4)
#begin
#you have syntax error on for r in n:.
#a logical error on k=0 that causes Division by zero.
#(0..r+1) is changed to (0..r-1)
#there is no append method for array. changed to push
#p is used instead of prin
#=end
