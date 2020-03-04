def find_adjective(string) 
	words = string.split(" ") 
	index = words.find_index("is") 
	words[index + 1]
end


lines = []
File.open("Films.txt") do |review_file| 
	lines = review_file.readlines
end
puts lines
puts "Our films"
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
puts relevant_lines
puts "reviews"
reviews = relevant_lines.reject { |line| line.include?("--") }
puts reviews
puts "The critics agree, Truncated is:"
adjectives = reviews.map do |review| 
	adjective = find_adjective(review) 
	"'#{adjective.capitalize}'" 
end
puts adjectives