class Reg
def 3rd_wrd

		
		
		while true
			print "Enter string"
			str=gets.chomp
			if str=="q"
				break
			end
			if pattern=/\s*\w+\s\w+\s\w+/.match("#{str}")
				print "3rd word in string"
				puts pattern[0].split(" ").last
			else
				puts "3rd word is not there"
			end
		end

	end
end

Obj=Reg.new
Obj.3rd_wrd
