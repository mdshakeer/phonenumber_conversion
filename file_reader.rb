def file_to_array
	a3,a4,a5,a6,a7,a10 = [],[],[],[],[],[]
	#Open text file in read mode 
	File.open("dictionary.txt", "r+") do |f|
		f.each do |line|
			if line.length == 3
				a3 << line.chomp.downcase
			elsif line.length == 4
				a4 << line.chomp.downcase
			elsif line.length == 5
				a5 << line.chomp.downcase
			elsif line.length == 6
				a6 << line.chomp.downcase
			elsif line.length == 7
				a7 << line.chomp.downcase
			elsif line.length == 10
				a10 << line.chomp.downcase
			end
		end
	end
	return [a3,a4,a5,a6,a7,a10]
end
