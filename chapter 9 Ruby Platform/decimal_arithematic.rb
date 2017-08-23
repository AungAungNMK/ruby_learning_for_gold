#BigDecimal object can have an unlimited number of significant digits and practically unlimited size.
require 'bigdecimal'
dime = BigDecimal("0.1") # pass a string to constuctor , not a float
puts 4*dime-3*dime == dime #true with bigdecimal ,but false if we use float

#compute mothly interest payment on a mortgage with BigDecimal
#use Banker's Rounding mode, and limit computation to 20 digits
BigDecimal.mode(BigDecimal::ROUND_MODE, BigDecimal::ROUND_HALF_EVEN)
BigDecimal.limit(20)
principal = BigDecimal("2000000") # lway pass a tirng ot the constructor
apr = BigDecimal("6.5") #interest rate
puts years = 30 #years
puts payments = years * 12 #12moth payment in year
puts interest = apr/100/12 #apr to monthly fraction
puts x = (interest + 1 )**payments #exponentation with BigDecimal
puts monthly = (principal * interest * x )/(x-1) #COmpute mothly payment
puts monthly = monthly.round(2) #round to two decimal places
puts monthly = monthly.to_s("f") #convert to human readable stirng