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

puts "What is your client's first name?"
name_first = gets.chomp
design[:first_name] = name_first

puts "What is your client's last name?"
name_last = gets.chomp
design[:last_name] = name_last

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

puts "What is the decor theme?"
decor_theme = gets.chomp
design[:theme] = decor_theme


puts "What is the client's favorite color?"
favorite_color = gets.chomp
design[:color] = favorite_color

puts "Here is the information you entered."
p design

puts "Update information by typing 'first_name', 'last_name', 'client_age', 'children', 'theme', 'color', 
or keep current information by typing 'none'."

key = gets.chomp.to_sym
	if key == :none
		p design
	end
puts "Update #{key} with a new value."
#value = gets.chomp
	if key == :first_name || :last_name || :theme || :color
		value = gets.chomp
		design[key] = value
	elsif key == :client_age
		value = gets.chomp.to_i
		design[key] = value
	elsif key == :children
		design[key] = value
	end
p design


# if input == "none"
# 	p design

# elsif input == "first name"
# 	puts "Enter new first name."
# 	first_name = gets.chomp
# 	design[:name_first] = first_name
# 	p design

# elsif input == "lastname"
# 	puts "Enter new last name."
# 	last_name = gets.chomp
# 	design[:name_last] = last_name
# 	p design

# elsif input == "age"
# 	puts "Enter a new age."
# 	age = gets.chomp.to_i
# 	design[:client_age] = age
# 	p design

# elsif input == "children"
# 	puts "Does your client have children (true or false)?"
# 	kids = gets.chomp
# 	if kids == "true"
# 		kids = true
# 	else 
# 		kids = false
# 	end
# 	design [:children] = kids
# 	p design

# elsif input == "theme"
# 	puts "Enter a new theme."
# 	decor_theme = gets.chomp
# 	design[:theme] = decor_theme
# 	p design

# elsif input == "color"
# 	puts "Enter new color"
# 	favorite_color = gets.chomp
# 	design[:color] = favorite_color
# 	p design
# end

