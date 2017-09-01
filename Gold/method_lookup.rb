class Person
    attr_accessor :first_name, :last_name
end
module Professor
    def lectures; end
end
class Mathematician < Person
    include Professor
end
me = Mathematician.new
puts me.first_name = "Aung"

#this is for 2 * 2 array:
arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end
sums=[]
for x in (0..3)
    for y in (0..3)
        sum=arr[x][y]+arr[x][y+1]+arr[x][y+2]+arr[x+1][y+1]+arr[x+2][y]+arr[x+2][y+1]+arr[x+2][y+2]
        sums<<sum
    end
end
puts sums.max



$S =~ s/^.*[a-z].*$/Bad String/;

say $S