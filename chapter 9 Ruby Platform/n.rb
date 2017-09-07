while gets
    $F = split if $-a
    chop! if $-l
end
#-p :This option runs the program as if it were written in the follwing loop.
while gets
    $F = split if $-a
    chop! if $-l
    print 
end
-c :parse the program and report errors.
-C Dir, -X dir :current dir to the dir before running the program
-s :the interpreter preprocesses any arguments that appear after the program name and begin with a hyphen.
-S :lookfor the specified program file rellative to the path specified in the RUBY_PATH environment variable.
-T n :$SAFE to n,or to 1 if n is omitted.
-x[dir] :extracts ruby source from the program file by discarding any lines before the first that starts #!ruby .



