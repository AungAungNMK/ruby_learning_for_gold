puts Encoding.default_external
puts Encoding.compatible?(Encoding::UTF_8, Encoding::US_ASCII)
puts Encoding.compatible?(Encoding::UTF_8, Encoding::Shift_JIS)
#a = "​ျေျျီိ"
#b = a.encode("EUC-JP") #Encoding::UndefinedConversionError
a = "abc"
#b = "​あいう".encode("EUC_JP")
#puts b.encoding