a = []
a.push(1)#1
a.push(2,3) #123
print a #123
puts 
puts a.pop #3
puts a.pop#2
puts a.pop #1
puts a.pop #nil

a = []
puts a.push(1) #[1]
puts a.push(2) #[1,2]
puts a.shift #1
puts a.push(3) #23
puts a.shift #2
puts a.shift#3
puts a.shift#nil :[]