require 'csv'
#CSV.open("smaple.csv", mode = "rb", option = {})
CSV.open("sample.csv") do |cv|
    cv.each do |row|
        p row
    end
end
=begin
["abc", "def", "ghi", nil]
["123", "456", "789"]
["ASDSADSA", "SDADAD", nil, nil]
=end
p cc = CSV.open("sample_write.csv", "w") do |row|
    row << ["abc","def","ghi"]
    row << ["123","456","789"]
end
=begin
#csv.foreach
read/readline
CSV.read(path, option = {})
CSV.readline(path, option={})
=end
p CSV.read("sample.csv")
p CSV.readlines("sample.csv")
p csv_table = CSV.read("sample.csv", headers: true)
p csv_table.to_a