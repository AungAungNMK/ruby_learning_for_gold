class Bar
    def method_missing(name, *args)
        puts name
    end
end
b = Bar.new
b.hoge
b.zzzz