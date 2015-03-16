class Reg
def str_St

		
		print "Enter String:"
		str=gets.chomp
		if /^St|^st/.match("#{str}")
			puts "starts with st"
		else
			puts "does not start with st"
		end

	end
end
Obj=Reg.new
Obj.str_St
	
