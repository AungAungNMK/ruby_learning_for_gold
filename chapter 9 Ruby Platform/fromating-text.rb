n, animal = 2, "mice"
puts "#{n} blind #{animal}" 
# Alternatice to the interpolative above
printf('%d blind %s', n + 1 , animal) #3 blind mice
sprintf('%d blind %s', n + 1 , animal) #3 blind mice
puts '%d blind %s' % [n+1,animal]

#fromating numbers
puts '%d' % 10 #10
puts '%x' % 10 #a :%x is use for hexadecimal integer
puts  '%X' % 10 #A :%X is use for upper case hexadecimal integers
puts '%o' % 10 #12 :octal integers
puts '%f' % 1234.567 #full length floating point numeber
puts '%e' % 1234.567 #1.234567e+03 :exp
puts '%E' % 1234.567 #1.234567E+03 :exp with upper case E
puts '%g' % 1.23456E12 #1.23456e+12

#Field width
puts '%5s' % '<<<' #'  <<<' :rigth juestify in field five char wide 
puts '%-5s' % '>>>' #'>>>  ' :left justify in field fieve chars wide
puts '%5d' % 123 # '  123' :field is five charater wide//start left with space and then show ---
puts '%05d' % 123 #'00123' :pads with zeros in field five character wide

#Pression 
puts '%.2f' % 123.45677 #123.46  :two digit after decimal
puts '%.2e' % 123.456 #'1.23e+02' :two digit after decimal 
puts '%.6e' % 123.456 #'1.234560e+02' : note added zero
puts '%.4g' % 123.456 #123.5 :four significant digit

#Fild and precission combined
puts '%6.4g' % 123.456 #' 123.5 ' :four significcant digits in field six charcter wide
puts '%3s' % 'ruby' #'ruby' :starting arguments exceeds field width
puts '%3.3s' % 'ruby' #'rub' :precission forces trunction of string

#Multiple arguments to be formatted
args = ['SyantaxError', 'test.rb', 20]
puts "%s: in '%s' line %d" % args #SyantaxError: in 'test.rb' line 20
puts "%2$s:%3$d: %1$s" % args



