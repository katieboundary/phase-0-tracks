# designer pseudocode: 

# Ask user to fill out data (client_name, age, address, number_of_children, decor_theme, favorite_color)
# gets.chomp
# store data in a hash/convert (Strings have methods that will turn them into symbols)
# continue process until finished
# print results
# Are there any updates that need to be made? (If so, enter the name of the key/none)
# have user update data as needed or enter "none"
# print results
design = {}
puts "Hello, Interior designer. Enter in your client's information:"

# puts "What is your client's first name?"
# first_name = gets.chomp
# design[:name_first] = first_name

# puts "What is your client's last name?"
# last_name = gets.chomp
# design[:name_last] = last_name

puts "What is your client's age?"
age = gets.chomp.to_i
design[:client_age] = age

puts "Does your client have children (true or false)?"
kids = gets.chomp
	if kids == "true"
		kids = true
	else 
		kids = false
	end
design [:children] = kids

# puts "What is the decor theme?"
# decor_theme = gets.chomp
# design[:theme] = decor_theme


puts "What is the client's favorite color?"
favorite_color = gets.chomp
design[:color] = favorite_color

puts "Here is the information you entered."
p design

puts "Update information by typing 'color' or keep current information by typing 'none'."
input = gets.chomp
if input == "none"
	p design
elsif input == "color"
	input = gets.chomp
	puts "Enter new color"
	favorite_color = gets.chomp
	design[:color] = favorite_color
	p design
end

