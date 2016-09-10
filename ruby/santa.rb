class Santa	
	attr_reader :age, :ethnicity
	attr_accessor :age, :reindeer, :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		# @age = (0...140)
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie)
		"That was a good #{cookie}"
	end

	# def set_ethnicity(ethnicity)
	# 	@ethnicity = ethnicity
	# end

	# #getter method
	# def age
	# 	@age
	# end

	# # setter method
	# def celebrate_birthday=(new_age)
	# 	@age = new_age
	# end

	# # #setter method
	# # def age=(new_age)
	# # 	@age = new_age
	# # end

	# #getter method
	# def ethnicity
	# 	@ethnicity
	# end

	# #getter method
	# def reindeer 
	# 	@reindeer
	# end

	# #setter method
	# def get_mad_at=(reindeer)
	# 	@reindeer = reindeer
	# end

	# #getter method
	# def gender
	# 	@gender
	# end

	# #setter method
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	

end

santa = Santa.new("Female", "Portuguese")
p santa.speak
p santa.eat_milk_and_cookies("snickerdoodle")
p santa.gender

#Release 1 - empty array filled with santa instances:
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")


# Release 1 given code:
# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["Asian", "European", "black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
  # santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

puts "Is #{santa.age} years old and their ethnicity is #{santa.ethnicity}"
p santa.gender = "I'm a dude now!"

#p santa.celebrate_birthday = santa.age + 1
p santa.age += 1

#p santa.get_mad_at = santa.reindeer.rotate(1)
p santa.reindeer.rotate(1)


100.times do |i|
	santa2 = Santa.new(example_genders.sample, example_ethnicities.sample)
	santa2.age = rand(0...140)
	p santa2

end






