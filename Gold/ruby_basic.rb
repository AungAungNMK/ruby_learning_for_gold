p 42/10r
p (42/10r).class
p 3.14r
p 42i
p 42i.class #Complex
p 3.14i
p 43ri
p 3.14ri
p 1 + 2
p 1-2
p 4/2
p 4%3 #1
p 1 == 1
p 1 != 2
p 2 >= 2
p 100 <=> 10 #1
p 1 <=> 1
p 10 <=> 100
a = 100
p a += 1
p a -= 1
p a *= 100
p a **= 2
p 1.class
p 1.class.superclass
p 1.class.superclass.superclass
p 1.2.class
p 1.2.class.superclass
p 1.+(3)
def foo a,b
    a + b
end
p foo(1,2)
p foo 2,3
def foo1(a, b=100)
    a + b
end
p foo1(2,3)
p foo1(1)
#p foo1 #ArgumentError
def foo2(a:, b: 100)
    a + b
end
p foo2(a: 2, b: 3)
p foo2(a: 1)
#p foo2 #ArgumentError
#p foo2(a: 2, c: 100) #ArgumentError
def bar(a:, b:, **z)
    p z
    a + b
end
p bar(a: 2, b: 100, d: 200)
query = <<SQL
select * 
from my_table;
SQL
p query
def foo3
    result = <<-RESULT
    Ru
    by
    Result
    RESULT
end
p foo3
a = 1
s = <<'TEST'
#{a}
TEST
p s  #"\#{a}\n"
s = <<"TEST"
#{a}
TEST
p s #1\n
a = %*test*
p a #test
a = %*"test"*
p a #"\"test\""
a = %[test]
p a #"test"
a = 1
p %q!#{a + 1}!
p %Q?#{a+1}? #"2"
p a = "ru" + "by"
p a * 3
#p 3* a #TypeError
a = "ru"
p a << "by"
p a 
a = "aung"
p a.encoding
b = a.encode("SJIS")
p b.encoding ##<Encoding:Windows-31J>
p a + b #"aungaung"
p "a" < "b"
p "ab" < "ac"
p "Ab" < "Ab"
p "Ab" <=> "Ab"
p sprintf("result: %#b", 16) #"result: 0b10000"
p sprintf("result: %#o", 16) #result: 020
p sprintf("result: %#x", 16) #result : 0x10
p sprintf("result: %#X", 16) #result :0X10
p sprintf("result: %02d", 1) #reult :01
p sprintf("result: %03d", 1) # result :001
p sprintf("result: %05.2f", 1.1111) #"result: 01.11"
p foo = :"foo1" #:foo1
p foo2 = :"foo2#{foo}" #:foo2foo1
p foo3 = :'foo3' #:foo3
p foo4 = :foo4 #:foo4
v1 = "foo1"
p v2 = "foo1".to_sym #:foo1
p v3 = v2.to_s #"foo1"
p "foo1".__id__
p "foo2".__id__
p :foo1.__id__
p :foo2.__id__
p "foo1" == "foo1" #true
p "foo1".equal? "foo1" #false
p :foo1 == :foo1 #true
p :foo1.equal? :foo1 #true
p "foo1".eql?"foo1" #true
p 1.0 == 1 #true
p 1.0.eql?1 #false
p 1.0.eql?1.0 #true
v1 = "foo1"
v2 = v1
p v1.equal? v2 #true
v1 += "foo2"
p v1 #"foo1foo2"
p v2 #foo1
def func v1
    v1.__id__
end
v1 = "foo1"
p v1.__id__ #3008244
p func(v1) #3008244
def func v1
    v1 += "foo2"
end
v1 = "foo1"
p func v1 #"foo1foo2"
p v1 #foo1
v1 = "foo1"
v2 = v1
p v1.chop #foo
p v2 #foo1
p v1.chop! #foo
p v2 #foo
v1,v2,v3 = "foo","foo","foo"
p v1.__id__#18644112
p v2.__id__ #18644100
p v3.__id__ #18644814
v1,v2,v3 = :foo,:foo,:foo
p v1.__id__#535124
p v2.__id__ #535124
p v3.__id__ #535124
a = []
b = ["20",12,true]
p b[0] #"20"
a = [[1,2], [2,3]]
p a[0][0] #1
p [1][1] #3
v1 = %w(hoge foo bar)
p v1.join()
p v1.join("-")#hoge-foo-bar
a = Array.new(5)
p a.length #5
p Array.new(2){|index| index + 10}
a1 = Array.new(2, "a") #["a","a"]
a1[0].replace("b")
p a1 #["b","b"]
p a = Array.new(2){"a"}
a[0].replace("b")
p a #["b","a"]
v1 = [10]
p v1.length #1
p v1[3] = "aa"
p v1
p v1.length
p v1[2]
p v1[100]
p v1[-1] #"aa"
p v1[-4] #10
p v1[4-4] #10
a = [0,1,2,3,4,5]
p a[2,3] #[2,3,4] start: 2 count: 3
a[1,2] = "a"
p a.length
p a 
a[1,2] = "a","b"
p a 
a[1] = "A","B","C"
p a #[0, ["A", "B", "C"], "b", 4, 5]
p a[2] #b
puts "In foo funtion"
ff = def foo; return 1, 2, 3; end
a2, b2, c2 = ff
p a2
p b2
p c2
a,b,c = [1,2,3]
p a #1
p b #2
p c  #3
(a,b),c = [1,2],3
p a #1
a,b,c = 1,2
p c #nil
a,b = 1,2,3
p b #2
a, *b = 1,2,3,4,5,6
p b #[2,3,4,5,6]
def foo(a, *b)
    b
end
p foo(1,2,3,4,5) #[2,3,4,5]
def foo1 a, *b
    foo2(*b)
end
def foo2 c,*d
    d
end
p foo1(1,2,3) #[3]
a = [1,1,2,2]
b = [2,2,3,3]
p a & b #[2]
p a | b #[1,2,3]
a = [1,1,2,2]
b = [2,2,3,4]
p a + b #[1, 1, 2, 2, 2, 2, 3, 4]
p a - b #[1,1]
p b - a #[3,4]
p b + a #[2,2,3,4,1,1,2,2]
p [1,2] * 3 #[1, 2, 1, 2, 1, 2]
p [1,2,3,4] * "-" #"1-2-3-4"
p [1,2,3,4].join("*") #"1*2*3*4"
a = [1,2,3,4]
for i in a do 
    p i 
end #1,2,3,4
for i,j in [[1,2],[3,4]]
    p i + j
end #3, 7
for i in [1,2,3,4]
    bar = 1
end
p bar #1
[1,2,3].each do 
    bar = 1
end
p bar # undefined local variable or method `bar' for main
#iterate it with each without predefined :will cause an error 
hash = { :one => 1, :two => 2, :three => 3}
p hash[:one] #1
hash[:two] = 6
p hash
h = {}
p h[:one] #nil
h1 = Hash.new(5)
p h1[:foo] #5 :it is the default value
h2 = { one: 1, two: 2, three: 3}
#to_h
p array = [[:one, 1],[:two, 2],[:three, 3]].to_h
def hash a,b,c
    c 
end
p hash(1,2,:foo1=> 1,:foo2=> 2) #{:foo1=>1, :foo2=>2}
p (1..5).include? 5#true
p (1..5).include? 6 #false
p (1..5) == 3 #false
p (1..5) === 3 #true
p (1...5) === 5 #false
for i in 'a'..'z'
    p i 
end #a..z
a = "abcdef"
p a[0] #a
i = 0
while (0..4) === i do
    p i 
    i += 1
end #0,1,2,3,4
i = 0
until i == 5 do
    p i 
    i += 1
end #0..4
i = 0
begin
    p i 
    i += 1
end while(1..4) === i #0,1,2,3,4
i = 0
p i +=1 while (0..4) === i #1,2,3,4,5
p /Ruby/
p %r(Ruby) #/Ruby/
p Regexp.new "Ruby" #/Ruby/
p /Ruby/ === "I love Ruby" #true
p case " I love Ruby "
when /Ruby/ then; "Ruby!"
when /Java/ then; "Java!"
end
#"Ruby!"
#=~ : return the index if the match found
p /Ruby/ =~ "I love Ruby" #7
p "I love Ruby" =~ /Ruby/  #7
p /bb/ =~ "aabbccdddddd" #2
p $` # "aa" :start
p $& # "bb" :after start
p $' # "ccdddddd" :last :all 
reg = /^(aa|bb)c$/
p reg === "aac" #true
p reg === "bbc" #true
reg = /a[bsd][efg]/
p reg === "adh" #false
p reg === "abg" #true
p /a[1-5]z/ === "a3z" #true
p /a[b-d]z/ === "acz" #true
p /a\db/ === "a2b" #digit: true
p /a(bc)*d/ === "addfkjkfjkfjk" #true
%r|(http://www(\.)(.*)/)| =~ "http://www.xyz.org/"
p $1 #"http://www.xyz.org/" :all from teh second
p $2 # "."
p $3 #"xyz.org"
p $4 #nil
p $0 #name of the file :"ruby_basic.rb"
p /ruby/ === "RUBY" #false
p /ruby/i === "RUBY" #:true :ignore case
p /a.*b/ === "a\nb" #false
p /a.*b/m === "a\nb" #true :m=> multiline
def func x 
    x + yield
end
p func(1) { 2 } #3
def func y
    y + yield
end
func(1) do
x = 2
end
#p x #undefined local variable or method `x' for main:Object (NameError)
def func y
    y + yield
end
x = 2
func(1) do
x += 2
end
p x  #4