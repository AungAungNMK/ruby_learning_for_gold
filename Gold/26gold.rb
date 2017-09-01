class Speaker
  @message = "Hello!"

  class << self
    @message = "Howdy!"

    def speak
      @message
    end
  end
end
puts Speaker.speak
#puts Speaker.singleton_class.speak
puts Speaker.singleton_class.instance_variable_get(:@message)
puts Speaker.instance_variable_get(:@message)
