def conread(filename)
    h = {} #empty hash for results
    filename.each do |f|
        h[f] = Thread.new do
            open(f) {|f1| f1.read} #open and read the file
        end
    end
    h.each_pair do |filename,thread|
        begin
            h[filename] = thread.value
        rescue
            h[filename] = $!
        end
    end
end
