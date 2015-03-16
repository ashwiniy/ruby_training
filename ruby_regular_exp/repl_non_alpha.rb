class Reg
def repl_nonalphanum

		
		print "input the string:"
			str=gets.chomp
		patt_str=/([^0-9a-zA-Z])*/.match(str)
	

			str1=str.gsub("#{patt_str}","-")
			puts str1
		
		

	end
end
Obj=Reg.new
Obj.repl_nonalphanum
	
