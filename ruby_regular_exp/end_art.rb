class Reg
def end_art

		
		print "Enter the string:"
		str=gets.chomp
		if /(.)*(art)/.match("#{str}")  
			puts "string end with art"
		else
			puts "string doesn't end with art"
		end
		
	end
end
Obj=Reg.new
Obj.end_art
	
