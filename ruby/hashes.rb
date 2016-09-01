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
kids = kids == "true"
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
if key != :none
	
	puts "Update #{key} with a new value."
	if [:first_name, :last_name, :theme, :color].member?(key)
		value = gets.chomp
		design[key] = value
	elsif key == :client_age
		value = gets.chomp.to_i
		design[key] = value
	elsif key == :children
		value = gets.chomp
		value = value == "true"
		design[key] = value
	end
end
p design


