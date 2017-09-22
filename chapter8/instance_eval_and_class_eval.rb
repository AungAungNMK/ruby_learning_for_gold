o.instance_eval { @x}
String class_eval{
    def len
        size
    end
    
}
String.class_eval { alias len size } #to return length o the string
String.instance_eval { def empty; ""; end} #use instance_eval to define class method String.empty

