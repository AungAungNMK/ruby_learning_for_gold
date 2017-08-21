def hasValue(x)
    case x
when nil,[], "", 0   #if nil == x || []===x || ""=== x || 0===x then
    false
else
    true
end
end

