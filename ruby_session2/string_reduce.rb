def remove(str)
	str1 =String.new
	str1 = str.each_char{''}
	puts str1
	begin
		c=0
		len = str1.length
		str2 = String.new
		while c < len
  			str2 = str2 + str1[c]
  			c = c + 2
 		end
 		puts str2
 		str1 = str2.each_char{''}
	end while str1.length > 1 
end
puts "enter string"
str = gets.chomp
remove(str)
