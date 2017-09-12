p a = /abcde/i
p a.class
p a = Regexp.new("abcdefg",Regexp::MULTILINE | Regexp::IGNORECASE)
p a = Regexp.new("abc")
p a.match("abcdefg")
p a =~ "abcdefg"
p "abcdefg" =~ a
p a === "abcdefg"
$_ = "abcdefg"
a = Regexp.new("abc")
p ~ a
p Regexp.escape("array.pusk(hash[key])")
p /abc/ =~ "abcdjhfdjhfkdhfkdjfksjf"
p Regexp.last_match
p $~  #output match data
p /(abc)d(efg)/ =~ "abcdefgjaewurjfkkkdsjdsldfjljroifsodi"
p Regexp.last_match
p $& #all match data out
p $1 #first match
a = Regexp.new("abc")
b = Regexp.new("ABC")
p c = Regexp.new(a, b)
p c =~ "abc"
p Regexp.last_match
=begin
options
casefold?
kcode
source
=end
a = Regexp.new("abcdefg",Regexp::MULTILINE | Regexp::IGNORECASE)
p a.options
p a.options & Regexp::IGNORECASE
p a.options & Regexp::EXTENDED
a = Regexp.new("abcdefg")
p a.casefold?
a = Regexp.new("abcdefg",Regexp::MULTILINE | Regexp::IGNORECASE)
p a.casefold?
a = Regexp.new("abcdefg")
#p a.kcode #nil
a = Regexp.new("abcdefg", nil, 'utf8')
#p a.kcode #:utf8
a = Regexp.new("abcdefg",Regexp::MULTILINE | Regexp::IGNORECASE)
p a.source
p a.to_s
p a.inspect