require 'json'
json = <<-DATA
["Red","Green","Blue"]
DATA
p JSON.load(json) #["Red", "Green", "Blue"]
p JSON.load(json, lambda{|x| p x})
p JSON.load(File.open "json.json")
print JSON.dump(json) #"[\"Red\",\"Green\",\"Blue\"]\n"
f = File.open("json.json", "w")
p JSON.dump(json,f) #<File:json.json>