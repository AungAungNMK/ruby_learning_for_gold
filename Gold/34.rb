CustomError = Class.new(StandardError)

def boom
  raise CustomError 
rescue
  raise
end

begin 
  boom
rescue => e
  p e.class
end