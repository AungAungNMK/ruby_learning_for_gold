#YAML.load(io)
#YAML.load(str)
require 'yaml'
data = <<-DATA
-Red
-Green
-Blue
-ink
-pink
-white
DATA
puts YAML.load(data)
#YAML.load_file(filepath)
p YAML.load_file "sample.yaml"

#YAML.load_string(io)
yaml_string = YAML.load_file(File.open "sample.yaml")
#p yaml_string.documents #to show the data from fil 

#load_documents
#YAML.load_documents(io) {|obj| ...}
YAML.load_documents(File.open "sample.yaml") do |yaml|
    p yaml
end

#dump 
#dump_stream
#YAML.dump(obj, io = nil)
#YAML.dump_stream(*obj)
colors = ["Red","Green", "Blue"]
p YAML.dump(colors) #"---\n- Red\n- Green\n- Blue\n"
p YAML.dump colors, File.open("sample.yaml", "w+")
color1 = ["Red","Green", "Blue"]
color2 = ["Yellow","Brown", "White"]
p YAML.dump_stream color1, color2 #"---\n- Red\n- Green\n- Blue\n---\n- Yellow\n- Brown\n- White\n"
