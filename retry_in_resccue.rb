require 'open-uri'
tries = 0
begin 
    tries += 1
    open('http://www.google.com/')
rescue OpenURI::HTTPError => e
    puts e.message
    if (tries < 4 )
        sleep((2**tries))
        retry
    end
end

