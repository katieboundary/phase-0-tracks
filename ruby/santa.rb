class Santa	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		#p @gender
		#p @ethnicity
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		# p @reindeer
		@age = 0
		#p @age
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie)
		"That was a good #{cookie}"
	end

	def set_ethnicity(ethnicity)
		@ethnicity = ethnicity
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	# def celebrate_age=(new_age)
	# 	@age + 1 = new_age
	# end

	# def get_mad_at=(reindeer)
	# 	@reindeer.rotate(1) = reindeer
	# end

	def gender=(new_gender)
		@gender = new_gender
	end




end

santa = Santa.new("Female", "Portuguese")
p santa.speak
p santa.eat_milk_and_cookies("snickerdoodle")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["Asian", "European", "black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
# puts "Is #{santa.age} years old and their ethnicity is #{santa.ethnicity}"
# p santa.get_mad_at
p santa.gender = "I'm a dude now!"
end

#Release 1 - empty array filled with santa instances:
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")





