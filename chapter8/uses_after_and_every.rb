require 'afterevery'
1.upto(5) {|i| after i { puts i }}
every 1,6 do |count|
    puts count
    break if count == 10
    count + 1
end
sleep(6)