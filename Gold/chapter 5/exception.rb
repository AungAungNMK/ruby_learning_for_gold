class MyError < RuntimeError; end
begin 
    raise MyError.exception('Syntax Wrong')
rescue => ex
    p ex.message
end
#the another form
class MyError < RuntimeError; end
begin
    raise MyError.exception('something wrong ')
rescue => ex
    p ex.backtrace
end
#the another exception
class MyError < RuntimeError; end
begin 
    raise MyError.exception('wrong')
rescue => ex
    ex.set_backtrace("This is new backtrace")
    p ex.backtrace
end

