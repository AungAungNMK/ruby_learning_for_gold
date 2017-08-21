1. check the eigenclass o for singleton methods
2. no method found in the eigenclass, ruby search the class of an instance method 
3.no method found in the class, ruby search instance methods of any module included by the class.
    If there has more than one module searchin the reverse order in which they are included.
    Most recently included module is searched first.
4. no instance method found int the class or module,search moves upto inheritance hierarchy to the superclass.
5.if no method name found after completing the search, a method name 'method_missing' is invoked.
    In order to find an appropriate definition of this method,the name resolution algorithm start over step1.
    Kernel module provides default implementation of 'method_missing' 
message = "Hello"
message.world
====we want to invoke a method name world on the string instance"hello".Name resolution are as follows:
1.check the eigenclass o for singleton methods
2.check for the string class.there are no instance method name 'world'
3.check the Comparable and Enumerable  module of the String class for instance method name 'world'
    neither module defined such a method
4.check the superclass of the String which is object .The object doesn't define such a method world'
5.check Kernel module included by objec.The world method is not found either,so we are looking for method_missing
6.looking for method_missing in each of the spot above.(eigenclass,String class,Enumerable and Comparable module,
    the Objec class,and the Kernel module)
    the first def if method_missing is =>NoMethodError: undefined method 'world' for "hello":string
    ===============
Now the next one is we are looking for clas method of Fixnum
    *the check singleton method of Fixnum, Integer, Numeric, and Object and then checks in 
    Class, Module, Object, Kernel
