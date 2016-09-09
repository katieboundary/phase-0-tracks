class Santa	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		p @gender
		p @ethnicity
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		p @reindeer
		@age = 0
		p @age
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


end

santa = Santa.new("Female", "Portuguese")
p santa.speak
p santa.eat_milk_and_cookies("snickerdoodle")





