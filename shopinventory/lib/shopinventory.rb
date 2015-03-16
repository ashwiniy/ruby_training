require 'fileutils'

module Debug

def srch
puts "enter string"
name=gets.chomp 
File.open("input.txt").readlines.each do |line|
    puts line if (line[name])
    end
end

def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end


def srch1
puts "enter string"
name=gets.chomp 
File.open("order.txt").readlines.each do |line|
    puts line if (line[name])
    end
end

def get_file_as_string1(filename)
  data = ''
  f = File.open(filename, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end
end
class Shopkeeper

include Debug

def add()

i=0
while true
puts "enter c for continue n s for stop"
str=gets.chomp
if str==s
 break
else


aFile = File.new("input.txt", "a+")
if aFile
puts "enter id"
id = gets.chomp.to_i

puts "enter name"
pname = gets.chomp

puts "enter stock_item "
sname = gets.chomp.to_i

puts "enter company name"
cname = gets.chomp


aFile.puts("#{i}|#{pname}|#{sname}|#{cname}\n");
else
   puts "Unable to open file!"

end
end
end
i=i+1
end






def dlt
require 'fileutils'

open('input.txt', 'r') do |f|
  open('input.txt.tmp', 'w') do |f2|
    puts "enter string"
       a = gets.chomp.to_i
       f.each_line do |line|
              
        f2.write(line) unless line.start_with? a.to_s
        

end

 end
end

FileUtils.mv 'input.txt.tmp', 'input.txt'
end


def edit()

puts "enter id"
bFile = File.new("input.txt", "r+")
for row in bFile
id1=gets.chomp.to_i
if product = /^#{id1}.*/.match(row)


file_names = ['input.txt']

file_names.each do |file_name|
  text = File.read(file_name)
  a=gets.chomp
  b=gets.chomp
  new_contents = text.gsub(a,b)

    puts new_contents

   File.open(file_name, "w") {|file| file.puts new_contents }
end
end

end
end
end

class Customer

include Debug


def add1()

aFile = File.new("order.txt", "a+")
if aFile
puts "enter product id"
pid = gets.chomp.to_i

puts "enter name"
proname = gets.chomp

puts "enter credit card "
cr_card = gets.chomp.to_i


puts "enter cvv"
cvv = gets.chomp




bFile = File.new("input.txt", "r+")
	for row in bFile
puts row
		if product = /^#{pid}.*/.match(row)
		aFile.syswrite("\n#{pid}|#{proname}|#{cr_card}|#{cvv}")
	end

end


else
   puts "Unable to open file!"





end
end

 def aa
bFile = File.new("input.txt", "r+")
tempFile = File.new("tempInput.txt","a+")
	for row in bFile
		if (product = /^#{pid}.*/.match(row))
		aFile.syswrite("#{product}")
		tempFile.puts("#{pid}|#{(product.to_s).split("|")[1]}|#{(product.to_s).split("|")[2].to_i - 1}|#{(product.to_s).split("|")[3]}")
		
		else
			tempFile.puts(row)

	end

cFile=File.new("input.txt", "r+")

 end
FileUtils.mv("tempInput.txt","input.txt")
 end
end



puts "enter 1 shopkeeper or 0 customer"
a = gets.chomp.to_i

if a==1
 sh=Shopkeeper.new()
 puts "1 for add 2 for list 3 for search 4 for edit 5 for delete"
   b = gets.chomp.to_i 
    if b==1
      sh.add
    elsif b==2
xml_data =sh.get_file_as_string 'input.txt' 

puts xml_data

    elsif b==3
      sh.srch()
    elsif b==4
     
 sh.edit()
    
    end


elsif a==0
 cu=Customer.new()
 puts "1 for add 2 for list 3 for search"
   b = gets.chomp.to_i 
    if b==1
      cu.add1
    elsif b==2
        xml_data1 =cu.get_file_as_string1 'order.txt' 

         puts xml_data1

    elsif b==3
      cu.srch1()
    
    end
end

