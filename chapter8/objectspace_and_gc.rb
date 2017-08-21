#Print out a list of all known class
ObjectSpace.each_object(Class) { |c| puts c }
ObjectSpace._id2ref ==>is the inverse of Object.object_id and return the corresponding object or raise the 
RangeError if there has no object_id.
ObjectSpace.define_finalizer ==> allow the registration of the Proc or a block of code to be invoked when a specified 
object is grabage collected.
ObjectSpace.undefine_finalizer==> inverse of above
GC.start == ObjectSpace.garbage_collect
GC.start, GC.enable, GC.disable
*The combination of the _id2erf and define_finalizer methods allows the definition of the "weak reference" object
which hold the reference to a value without preventing the value from being garbage collected if they become 
unreachable.

