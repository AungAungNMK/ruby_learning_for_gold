def sequence(*enumerables,&block)
    enumerables.each do |enum|
        enum.each(&block)
    end
end
def interleave(*enumerables)
    enumerators = enumerables.map { |e| e.to_enum }
    until enumerators.empty?
    begin
        e = enumerators.shift
        yield e.next
    rescue StopIteration
    else
        enumerators << e
    end
end
end
def bundle(*enumerables)
    enumerators = enumerables.map { |e| e.to_enum }
    loop { yield enumerators.map { |e| e.next }}
end
a,b,c = [1,2,3],4..6,'a'..'e'
sequence(a,b,c) { |x| print x }
interleave(a,b,c) { |x| print x}
bundle(a,b,c){ |x| print x}

