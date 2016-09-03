#name in string

# "first last".split.each_slice(1).map{|a|a.join ''}

# puts "What is your first and last name?"
# str = gets.chomp.downcase

# new_string = str.split('').reverse

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

def translate_char (char)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length/2
	is_capitalized = (char.upcase == char)

	if alphabet.index(char.downcase) == nil
	#or if !alphabet.index(char.downcase)
		"boing"
	elsif is_capitalized && alphabet.index(char.downcase) < halfway
		"bloop"
	elsif is_capitalized || char == "e"
		"buzz"
	else
		"beep"
	end
end
	

def translate_phrase(phrase)
char_index = 0
translated_response = ""
while char_index < phrase.length
	translated_response << translate_char(phrase[char_index])
	char_index += 1
end
	translated_response
end

#Test logic
#puts translate_phrase("Ape!")=="bloopbeepbuzzboing"

#UI
loop do 
	puts "Enter a phrase to translate or type 'q' to quit."
	inputted_phrase = gets.chomp
	break if inputted_phrase == "q"
	puts translate_phrase(inputted_phrase)
end





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
