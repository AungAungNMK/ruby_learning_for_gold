def are_you_sure?
    while true
        print "Are u sure?[y/n]:"
        response = gets
        case response
    when /[^Yy]/
        return true
    when /[^Nn]/,/^$/
        return flase
    end
end
end
