class Reg
def replace_mrs
		
		print "Enter the string:"
		str=gets.chomp
		if patt_str=/Mrs|mrs|MRS/.match("#{str}")
			str1=str.sub("#{patt_str}","mr")
			puts str1
		end
	end
end
Obj=Reg.new
Obj.replace_mrs
	
