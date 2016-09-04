#Retrieve name from user, downcase name, put into array, split letters, and swap first and last name(reverse).
#Change all vowels to the next vowel in the sequence (a, e, i, o, u)
#Provide if statement if it isn't a vowel.
#Change consonants (everything else) to the next consonant in the sequence (b c d f g h j k. l m n p q r s. t v w x y z)
#Provide if statement if it isn't a consonant.
#Create method to separate each character and make it go through methods for vowels/consonants.
#Provide interface for user to enter a name and get a fake name back. put in a loop and allow them to exit by saying "q".
#Store names before and after in a data structure that prints out when they quit. Output as sentence using interpolation.

def rotate_your_vowel(char)
	vowels = "aeiou"
	i = vowels.index(char)
	if !i
		return nil
	elsif i == 4
		i = 0
	else
		i += 1
	end
	vowels[i]
end


def rotate_your_consonant(char)
	consonants = "bcdfghjklmnpqrstvwxyz"
	i = consonants.index(char)
	if !i
		return nil
	elsif i == 20
		i = 0
	else
		i += 1 
	end
	consonants[i]
end


def change_name(reverse_name)
	char_index = 0
	new_name = ""
	final_name = ""
	while char_index < reverse_name.length
		char = reverse_name[char_index]
		new_name << (rotate_your_vowel(char)|| rotate_your_consonant(char) || char)
		char_index += 1
		final_name = new_name.split.map(&:capitalize)*' '
	end
	final_name
end

array_names =[]
loop do 
	puts "Enter your first and last name or type 'q' to quit."
	real_name = gets.chomp
	break if real_name == "q"
	reverse_name = real_name.downcase.split.reverse.join(' ')
	array_names << [real_name, change_name(reverse_name)]
end

array_names.each do |real_name, final_name| 
	puts "#{real_name} is also known as #{final_name} "
end


