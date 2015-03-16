class Reg
def noalpha_numeric

		
		print "Enter the string:"
		str=gets.chomp
		if /[\W\D]+/.match("#{str}")
			puts "string has alpha numeric"
		else
			puts "string does not have alpha numeric"
		end
		
	end

end
Obj=Reg.new
Obj.noalpha_numeric
	
