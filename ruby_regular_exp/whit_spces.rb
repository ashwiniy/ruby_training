class Reg
def chk_whit_spac
		
		
		print "input string:"
		str=gets.chomp
		if /\s/.match("#{str}")
			puts "String has white spaces"
		else
			puts "string doesnot hav white spaces"
		end

	end
end

Obj=Reg.new
Obj.chk_whit_spac
		
       
