class Reg

	def parse_file

		puts "Enter file name"
		file_name=gets.chomp

		unless file_name=~/.*(.rb)/
			
			#puts "Enter ruby"
			return
		end

		f=File.open(file_name)
		unless f!=nil
			puts "unable to open the file"
		end
		global_var=0
		local_var=0
		class_var=0
		instance_var=0
		f.each do |row|
			if "#{row}"=~/\$\w*/
				global_var=global_var+1
			end
			if "#{row}"=~/@@\w*/
				class_var=class_var+1
			end
			if "#{row}"=~/@\w*/
				instance_var=instance_var+1
			end
		end
		print "\n\noutput:\nglobal_var:#{global_var}\n"
		puts "class_var:#{class_var}"
		puts "instance_var:#{instance_var}"

	end

end

reg_obj=Reg.new
reg_obj.parse_file
