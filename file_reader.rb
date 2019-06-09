def file_to_array
	a = []
	#Open text file in read mode 
	File.open("dictionary.txt", "r+") do |f|
		f.each do |line|
			a << line.chomp
		end
	end
	return a
end
