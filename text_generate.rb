require_relative 'file_reader'


def generate_text_for(num)
	mapped_text = {"2" => ["a","b","c"],"3" => ["d","e","f"], "4" => ["g","h","i"], "5" => ["j","k","l"], "6"=>["m","n","o"], "7" => ["p","q","r","s"], "8" => ["t","u","v"], "9" => ["w","x","y","z"]}
	text_list = file_to_array
	com_list = []
	filtered_list = []
	list3a,list3b,list3c,list3d,list4a,list4b,list5a,list5b,list6a,list6b,list7a,list7b,list10 = [],[],[],[],[],[],[],[],[],[],[],[],[]
	if num.length == 10
		num.split("").each do |le|
			com_list << mapped_text[le]
		end
		com_list[0].each do |a|
			com_list[1].each do |b|
				com_list[2].each do |c|
					com_list[3].each do |d|
						com_list[4].each do |e|
							com_list[5].each do |f|
								com_list[6].each do |g|
									com_list[7].each do |h|
										com_list[8].each do |i|
											com_list[9].each do |j|
												list3a << (a+b+c).chomp
												list3b << (d+e+f).chomp
												list3c << (h+i+j).chomp
												list3d << (e+f+g).chomp
												list4a << (a+b+c+d).chomp
												list4b << (g+h+i+j).chomp
												list5a << (a+b+c+d+e).chomp
												list5b << (f+g+h+i+j).chomp
												list6a << (e+f+g+h+i+j).chomp
												list6b << (a+b+c+d+e+f).chomp
												list7a << (a+b+c+d+e+f+g).chomp
												list7b << (d+e+f+g+h+i+j).chomp
												list10 << (a+b+c+d+e+f+g+h+i+j).chomp
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
		# puts text_list[98081]
		# puts list[26638]
		filtered_list << text_list[5] & list10
		if filtered_list.size > 0
			puts "1-800-#{filtered_list[0]}"
		end
	else
		puts "length should be equal to 10"
	end
end

start_time = Time.now
generate_text_for("6686787825")
end_time = Time.now - start_time
puts "Time taken for processing: #{end_time*1000}ms"

