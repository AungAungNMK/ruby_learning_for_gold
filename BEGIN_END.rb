a = 4;
if(true)
    END {
        puts "if ";
        puts a
    }
else
    END { puts "else"}
end
10.times {END { puts "loop"}}
