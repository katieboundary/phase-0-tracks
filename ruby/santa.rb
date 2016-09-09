class Santa

	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie)
		"That was a good #{cookie}"
	end


end

santa = Santa.new
p santa.speak
p santa.eat_milk_and_cookies("snickerdoodle")

