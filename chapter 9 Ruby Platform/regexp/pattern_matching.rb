pattern = /Ruby?/i #case insensitive
 puts pattern =~ "backrub" # :4 =>position of the first match char
 puts "rub ruby" =~ pattern #0: it is check the substring ,so the result be zero
 puts pattern =~ "r" #nil 
 puts "hello" =~ /e\w{2}/ #1:e followed by two word
 puts $~.string  #$~ is used to print :.string is tell the system it is a string
 puts $~.to_s #ell :the potion that matched "hello" =~ /e\w{2}/
 puts $~.pre_match #"h" :the potion before the match
 puts $~.post_match #o :after match
 puts "$~ is the thread_local an method-local variable "
 #pttern matching with threee subpatterns
 pattern = /(Ruby|Perl)(\s+)(rocks|sucks)!/
 text = "Ruby\trocks!"
 puts pattern =~ text # 0 :pattern match at the first char
 puts data = Regexp.last_match #Ruby rocks!
 puts data.size #4
 puts data[0] #complete :Ruby\trocksAAAA
 puts data[1] #Ruby
  data[2] #\t
 puts data[3] #rocks
 print data[1,2]#["Ruby","\t"]
 print data.values_at(1,3) #["Ruby","rocks!"]
 print data.captures #["Ruby","\t","rocks"]
 print Regexp.last_match(3) #rocks
 print data.begin(0) # 0:
 puts 
 puts data.begin(2) #4 start index of second
 puts data.end(2) #end index of second
 print data.offset(3) #[5,10]  and end of third

 #MatchData
 pattern = / (?<lang>Ruby|Perl) (?<ver>\d(\.\d)+) (?<review>rocks|sucks)!/
 if pattern =~ "Ruby 2.1.1 rocks!"
     puts $~[:lang]
     puts $~[:ver]
     puts $~["review"]
     print $~.offset(:ver)
    end
    print pattern.names
    print pattern.named_captures
puts "Pttern matching with String"
puts "ruby123"[/\d+/] #123 :d=digits
puts "ruby123"[/([a-z]+)(\d+)/,1] #ruby :1=ruby 2= 123 so the result is 
puts "ruby123"[/([a-z]+)(\d+)/,2]

puts "slice method is the synonym for string index operator [] and slice! deleting the return substring from the original"
r = "ruby123"
puts r.slice!(/\d+/) #123
puts r #ruby
puts "Split method split a string into array of substring, using a string or regular expression"
s = "one,two,three"
print s.split #["one","two"."three"] #whitespace delimiter
print s.split(", ")#["one","two"."three"] hard coded delimiter 
print s.split(/\s*,\s*/) #space is optional around the comma
puts "The index method serches a string for char,substring,or pattern and return the start index"
text = "Hello World"
pattern = /l/
puts first = text.index(pattern) #2 :h=1,e=1,l=2
puts n = Regexp.last_match.end(0) #3 :w=0,0=1,r=2,l=3
puts second = text.index(pattern,n) #3 :search again like the above one
puts last = text.rindex(pattern) #9 :h1 e2 l3 l4 o5 w6 o7 r8 l9
puts "Search and replace test with Regexp"
s = gets #get the data from the user
puts s.sub!(/#.*$/, "")#delete ruby style comment
puts s.gsub!(/\D/, ' '=> '-')
re = /(?<quote>['"])(?<body>[^'"])\k<quote>/
puts "These are 'quote'.".gsub(re, '\k<body>')


puts test = "RUBY Java perl PhyThON"
lang = /ruby|java|prel|phython/i
puts text.gsub!(lang) {|l| l.capitalie }
