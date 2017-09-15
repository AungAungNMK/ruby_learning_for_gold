require 'optparse'
opt = OptionParser.new
options = {}
OptionParser.new{|opt|
opt.on("-xArg", "with arg"){|v| p v }
opt.parse!(ARGV)
}
OptionParser.new{|opt|
opt.on("-xvalue = Arg", "with arg"){|v| p v }
opt.parse!(ARGV)
}
#parse => parse(*ARGV)
#parse! => parse!(*ARGV = default_argv)