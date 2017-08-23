#The matrix library defines MAtrix and Vectors class to represents matrix and Vectors of numbers as well as opertion 
#to perform arithematics on them.
require 'matrix'
#represents the point (1,1) as the Vectors[1,1]
unit =Vector[1,1]
# the identity transformation matrix
puts identity = Matrix.identity(2)  #2*2 matrix
puts identity * unit == unit # true :no transformation
# this matrices has a oint by sx,sy
sx,sy = 2.0,3.0
scale = Matrix[[sx,0],[0,sy]]
puts scale * unit
#Thsi matrix rotates counterclockwise around the origin
theta = Math::PI/2
rotate = Matrix[[Math.cos(theta), -Math.sin(theta)],[Math.sin(theta), Math.cos(theta)]]
puts rotate * unit
# two tranformation in one
puts scale * (rotate * unit)