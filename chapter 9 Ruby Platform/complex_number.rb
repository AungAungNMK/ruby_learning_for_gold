#Complex class represents complex number. 
#Math module can accept and return complex number.
require 'complex'
puts c = Complex(0.5,-0.2)
puts Complex.polar(1,Math::PI/2)
puts i= 1.imag
puts (2.real - 3.5.imag).to_s
 r,i = c.real, c.imag
m,a = c.polar
puts d = c.conj
puts z = "0+0i".to_c
puts 10.times { z = z*z + c}
puts 1.imag * z
 x = Math.sin(z)
require 'cmath'
puts CMath.sqrt(-1) == Complex::I
