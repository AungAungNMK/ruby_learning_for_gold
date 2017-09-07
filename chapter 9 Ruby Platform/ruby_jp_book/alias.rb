class Hoge
    def huga1; end
end
def Hoge
    def huga2; end
    alias :huga3 :huga1
    undef :huga2
end
print Hoge.instance_methods(false)
class String
    def huga; 1; end
end
print "my string".huga
#
def Foo; end
def Bar; end
def Baz < Foo
end
class Baz < Foo
end
class Baz 
end
#

