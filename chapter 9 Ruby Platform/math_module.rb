    puts Math::PI
    puts Math::E
    puts Math.sqrt(25.0) #5.0
    puts Math.cbrt(27.0) #3.0
    puts 27.0**(1.0/3.0) #3.0 :cube root computed with ** operators
    puts Math.log10(100.0) # 2
    puts Math.log(Math::E**3) #3.0 :natural base-e algorithm
    puts Math.log2(8) #3.0 
    puts Math.log(16,4) #2.0 :second argumetns to base is log
    puts Math.exp(2) # same as Math::E**2
    #trigonology 
    include Math
    puts sin(PI/2)#1.0
    puts cos(0)#1.0
    puts tan(PI/4)#0.9999999999999999
    puts asin(1.0)/4#0.39269908169872414
    puts sinh(0)#0.0
    puts asinh(1.0)#0.881373587019543
    x,y =1,2
    theta = atan2(y,x)
    r = hypot(x,y) #hypotenuse :sqrt(x**2 + y**2)
    #Miscellaneous Function
    #print f,e = frexp(1024.0) # decompose of x intot [f,e], x = f*2**e
   #     x = ldexp(f,e) #1024 :copumpute x = f*2**e
    puts erf(0.0) #0.0 :error function
    puts erfc(0.0) #1.0 :1-erf(x) :complementry error function
    puts gamma(5) #24.0 :floating point factorial function
    print lgamma(100)#359.1342 :logathematic gamma

    
    







