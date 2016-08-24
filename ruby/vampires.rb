puts "How many employees would you like to process?"
employees = gets.chomp.to_i
employees.times do

	puts "What is your name?"
	name = gets.chomp
	if name == "Drake Cula"
		name = false
	elsif name == "Tu Fang"
		name = false
	else
		name =true
	end

	puts "How old are you?"
	age = gets.chomp

	puts "What year were you born?"
	dob = gets.chomp.to_i
	if (Time.now.year - dob) != age.to_i
		age = false
	else
		age = true
	end
			
	puts "Our company cafeteria serves garlic bread. Should we order some for you?(yes/no)"
	garlic = gets.chomp
	if garlic == "yes"
		garlic = true
	else 
		garlic = false
	end

	puts "Would you like to enroll in the company's health insurance?(yes/no)"
	insurance = gets.chomp
	if insurance == "yes"
		insurance = true
	else
		insurance = false
	end

	allergies = false
	allergies_str = ''
	until allergies_str == 'done' ||  allergies_str == "sunshine"
		puts "List allergies one at a time. When you are done entering allergies, type 'done'."
		allergies_str = gets.chomp
		if allergies_str == "sunshine"
			allergies = true
		end
	end

	#puts [age, garlic, insurance, name].to_s
	if !name
		puts "Definitely a vampire"
	elsif allergies
		puts "Probably a vampire"
	elsif age && garlic && insurance 
		puts "Probably not a vampire."
	elsif !age && !garlic && !insurance
		puts "Almost certainly a vampire"
	elsif !insurance || (!age && !garlic)
		puts "Probably a vampire"
	else
		puts "Results inconclusive"
	end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	
