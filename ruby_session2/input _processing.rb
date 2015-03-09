def calculate_area(r)
   result = 2*3.141592653 * r
   return result
 end
 
 radius = 0.0
 area = 0.0
 print "Enter radius of circle: "
 radius = gets.to_f
 area = calculate_area(radius)
 puts "The area is #{area}."
