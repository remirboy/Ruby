File.open("text.txt","r") do |file|
	str = file.read()
	puts str
	File.open("textCopy2.txt","a") do |file|
	file.write(str)
	file.write("I love Ruby")
	end
end


