"Two of the simlest features are: _FILE_ and _LINE_ ,evaluates the name of the file and lline number within that file on which they appear. "
STDERR.puts "#{_FILE_} :#{_LINE_}: invalid data" #to define error with eaact error

Kernel.eval, Object.instance_eval amd Module.class_eval all accept the filename and line number as their 
    final two arguments.
    *When an exception is raised and not handled , error mssage printed out to the console contain filename and line nummber information based on _LI
    and _FILE_.
    *Every exception Object has a backtrace associated with it that show exactly where is was raised
    wher the method raised the exception ,where the method was invoked ,and so on.
    *Exceprion.backtrace method returns an array of String containing this information.
    *First element is array of location at which the exception occour and each subsequent element is one stack frame higher.
    *Kernel.caller method returns the  current state of teh call stack in the same form as Exceprion.backtrace
    *caller[0] == file location from which the current method was invoked.
    *arguments specify how many stack frame to drop from the start of the backtrace.
    *The default is 1, caller(0)[0] specify the location at which the caller method invoked.
    *caller[0] == caller(0)[1] and  caller[2] == caller[1..-1]
    *Example, raise "Assertion failed in #{_method_} at #{_FILE_}in #{_LINE_} "
    *Ruby allows you to to trace assignments to global variables with Kernel.trace_var.
    trace_var(:$SAFE) {|v|
    puts "$SAFE set to #{v} at #{caller[1]}"
}




