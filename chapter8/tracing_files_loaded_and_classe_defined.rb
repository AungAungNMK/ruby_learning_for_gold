#defien this module to hold the global state w reuire,sp that 
#wwe do not alter the globl namespace any more than necessary
module ClassTrace
    #this array holds out list of fils loaded and class defined.
    #Each element is a subarray of holding he class defined or the file loaded and
    #the atack frame wher it was defined or loaded 

    T = []                                  #array to hold file loaded
                                            # now define the constant OUT to specify where tracing output goes.
                                            #This default to STDERR ,but can also came from command_line arguments
    if x = ARGV.index("--traceout")
        OUT = File.open(ARGV[x + 1], "w")    # open the specified file
        ARGV[x,2] = nil                      # remocve the arguments
    else
        OUT = STDERR                         #default to STDERR
    end
end
                                              #Alias Changing step1 : define alias for e original method
alias original_require require
alias original_load load
                                              #Alias Changing step2 : define new version of the method
def require(file)
    ClassTrace::T << [file,caller[0]]         #remember what was loadeed where
    original_require(file)                    #invoke original method
end
def load(*args)
    ClassTrace::T << [args[0],caller[0]]      #remember what was loaded where
    original_load(*args)                      #invoke original method
end
def Object.inherited(c)#hook method
    ClassTrace::T << [c,caller[0]]            #remember what was defined where
end
                                            # Kernel.at_exit register to be run when the program exits
                                            #we use it to report the file and class data e ecollected
at_exit {
    o = ClassTrace::OUT
    o.puts "="*60
    ClassTrace::T.each do |what,where|
    if what.is_a? Class                      #Report class defined
        o.puts "Defined: #{what.ancessors.join('<-')} at #{where}"
    else                                     #Report file loaded
        o.puts "Loaded: #{what} at #{where}"
    end
end

}