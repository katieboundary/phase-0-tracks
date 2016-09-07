class Puppy
  def initialize 
  	puts "Initalizing new puppy instance...!"
  end 

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof" * int
  end 

  def rollover
  	puts "*rolls over*"
  end

  def human_to_dogyrs(int)
  	4 * int 
  end 

  def play_dead
  	puts "..."
  end

end

puppy = Puppy.new
puts puppy.fetch("stick")
puts puppy.speak(3)
puts puppy.rollover
puts puppy.human_to_dogyrs(10)
puts puppy.play_dead




class Cat
  def initialize 
  	puts "Initializing new cat instance...!"
  end 

  def human_to_catyrs(int)
  	puts 4 * int
  end 

  def purr
  	puts "*cat purrs*"
  end 

end

cat_array = []

	50.times do 
	  cat = Cat.new 
	  # puts cat.human_to_catyrs(25)
	  # puts cat.purr
	  cat_array << cat
	end 
	p cat_array

	cat_array.each do |cat|
		cat.purr
		cat.human_to_catyrs(3)
	end
	
	
	 

