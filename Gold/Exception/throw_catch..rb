def foo
    throw :exit
end
catch(:exit) {
    foo
    p 1
}
p 2 #2
def bar
    catch(:calc) do
        throw :calc, 100
    end
end
p bar #100