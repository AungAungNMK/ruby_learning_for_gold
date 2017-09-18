10.times do |i|
    next if i == 5
    print i, " "
end
#0 1 2 3 4 6 7 8 9 :skip current loop end goto the next loop
10.times do |i|
    break if i == 5
    print i, " "
end
#0 1 2 3 4
#raise ArgumentError
#raise ArgumentError.new
#err = ArgumentError.new("case mismatch")
#raise err
 #exception.rb:14:in `<main>': case mismatch (ArgumentError)
 begin
     1 / 0
     p 1
    rescue
        p 0
    end
    #0
    begin
       p 1
    rescue
        p 0
    else
        p 2
    ensure
        p 3
    end
    #1,2,3
    def foo
        -1/0
    rescue
        p 1
    end
    foo #1
    1/0 rescue p 1 #1
=begin
Type Of Error
Exception           ScriptError----------SyntaxError
                    SignalException
                    StandardError--------ArgumentError
                                ---------RuntimeError
                                ---------NameError
                                                    ----NoMethodError
                                ---------ZeroDivisionError


    
=end
