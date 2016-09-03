#Retrieve name from user, downcase name, put into array, split letters, and swap first and last name(reverse).
#Swap first and last name
#Change all vowels to the next vowel in the sequence (a, e, i, o, u)
#Change consonants (everything else) to the next consonant in the sequence (b c d f g h j k. l m n p q r s. t v w x y z)
#Provide interface for user to enter a name and get a fake name back. put in a loop and allow them to exit by saying "quit"
#Store names before and after in a data structure that prints out when they quit. Output as sentence.


# "first last".split.each_slice(1).map{|a|a.join ''}

puts "What is your first and last name?"
real_name = gets.chomp.downcase

#p new_string = str.split('').reverse

p reverse_name = real_name.reverse

def rotate_your_vowel(char)
	vowels = "aeiou"
	i = vowels.index(char)
	if i == 4
		i = 0
	else
		i += 1
	end
	vowels[i]
end


def rotate_your_consonant (char)
	consonants = "bcdfghjklmnpqrstvwxyz"
	if consonants.index(char) == 20
		index(char) = 0
	else
		index(char) + 1 
	end
end


def change_name (name)
	char_index = 0
	new_name = ""
	while char_index < phrase.length
		new_name << rotate_your_vowel(name[char_index])
		char_index += 1
	end
	new_name
end


# or make into an array.rotate(



# new_string.each 

# 	vowels = %w(a e i o u)
# 	if vowels 

# vowels = %w(a e i o u)
# rotated_vowels = vowels.rotate 1

# def vowel_adv(str)
#   new_str = str.dup
#   new_str.each_char.with_index do |char, i|
#     index = vowels.index char
#     if index
#       new_str[i] = rotated_vowels[index]
#     end
#   end
#   new_str
# end

# consonants = %w(b c d f g h j k. l m n p q r s. t v w x y z)
# rotated_consonants = consonants.rotate 1

# def consonant_adv(str)
#   new_str = str.dup
#   new_str.each_char.with_index do |char, i|
#     index = consonants.index char
#     if index
#       new_str[i] = rotated_consonants[index]
#     end
#   end
#   new_str
# end
# ----

#loop through each letter? after making it a string again?

#video example 

#BUSINESS LOGIC

# def translate_char (char)
# 	alphabet = "abcdefghijklmnopqrstuvwxyz"
# 	halfway = alphabet.length/2
# 	is_capitalized = (char.upcase == char)

# 	if alphabet.index(char.downcase) == nil
# 	#or if !alphabet.index(char.downcase)
# 		"boing"
# 	elsif is_capitalized && alphabet.index(char.downcase) < halfway
# 		"bloop"
# 	elsif is_capitalized || char == "e"
# 		"buzz"
# 	else
# 		"beep"
# 	end
# end
	

# def translate_phrase(phrase)
# char_index = 0
# translated_response = ""
# while char_index < phrase.length
# 	translated_response << translate_char(phrase[char_index])
# 	char_index += 1
# end
# 	translated_response
# end

# #Test logic
# #puts translate_phrase("Ape!")=="bloopbeepbuzzboing"

# #UI
# loop do 
# 	puts "Enter a phrase to translate or type 'q' to quit."
# 	inputted_phrase = gets.chomp
# 	break if inputted_phrase == "q"
# 	puts translate_phrase(inputted_phrase)
# end





#---------
#for each do 
# if aeiou .next
#vowels: ["a", "e", "i", "o", "u"]
#else
#["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"] .next

# .map { |e|  }

# .join


# vowels = %w(a e i o u)
# rotated_vowels = vowels.rotate 1

# def vowel_adv(str)
#   new_str = str.dup
#   new_str.each_char.with_index do |char, i|
#     index = vowels.index char
#     if index
#       new_str[i] = rotated_vowels[index]
#     end
#   end
#   new_str
# end
#http://stackoverflow.com/questions/37260132/advancing-vowel-to-the-next-vowel-in-ruby
