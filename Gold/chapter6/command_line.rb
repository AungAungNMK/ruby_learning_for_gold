require 'optparse'
opt = OptionParser.new
options = {}
opt.on("-o", "--output","output file"){|v|options["output"] = v }
opt.on("-i", "--input", "input file"){|v| options["input"] = v}
opt.parse!
p options
p ARGV
#banner
#OptionParser.new(banner = nil, width = 32, indent = ' ' * 4)
#OptionParser.new(banner = nil, width = 32, indent = ' ' * 4) {|opt| ...}
OptionParser.new{|opt|
opt.on("-o", "--output","output file"){|v|options["output"] = v }
opt.on("-i", "--input", "input file"){|v| options["input"] = v}
opt.parse!(ARGV)
}
p options
p ARGV
#on => on(*opt){|v| .. }


