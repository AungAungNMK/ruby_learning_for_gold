=begin
pid = fork
if (pid)
    puts "Hello from the parent: #$$"
    puts "Create Chiild process #{pid}"
else
    puts "Hello from child : #$$"
end
=end
#use open to pass "|-" as the first argument  _opens to a newly forked ruby process
open ("|-", "r+") do |child|
    if child 
        child.puts("Hello child")
        response = child.gets
        puts "Child said: #{response}"
    else
        from_parent = gets
        STDERR.puts "parent said: #{from_parent}"
        puts "Hi mon"
    end
end


