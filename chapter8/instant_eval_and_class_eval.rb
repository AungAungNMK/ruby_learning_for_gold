o.instance_eval { @x}
String class_eval{
    def len
        size
    end
    
}
String.class_eval { alias len size }
String.instance_eval { def empty; ""; end}
