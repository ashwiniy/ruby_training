class Reg

	def check_ss

		
		puts "Enter string:"
		str=gets.chomp
		
		if str=~/ss/
			puts "\npattern exist"
		else
			puts "\npattern is does not exist"
		end
	end
end

Obj=Reg.new
Obj.check_ss
