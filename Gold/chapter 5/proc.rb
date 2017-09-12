f = Proc.new{ p 'OK'}
f.call
f = Proc.new{|str| p str}
f.arity
f.call('NG')
i = 30
j = 40
f = Proc.new{ p i+j}
f.call
i = 100
f.call
f = Proc.new{|i| p i}
3.times(&f)
f = Proc.new{
    next "Next"
    "last"
}
f.call
#defferent between proc and lambda
#exactly the same argument required in lambda
#break operation cannot work in Proc but work in lambda
#if they call block proc and lambda in new block ,they cannot work.It may cause localJumpError
#break and return keyword work in lambda but doesn't work in Proc
f = Proc.new{|a,b,c| p a,b,c}
f.call(1,9) #1:9:nil
g = lambda {|a,b,c| p a,b,c}
g.call(1,2,3)
#g.call(1,9)#AgumentError
f = Proc.new{ break }
#f.call#localJump error
g = lambda {break}
g.call
f = Proc.new{break}
#10.times(&f):localJumpError
#g = lambda{break}
#10.times(&g)
#g.call :localjumperror
#f = Proc.new{return}
#
#f.call
g = lambda{return}
g.call