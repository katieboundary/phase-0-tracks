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
  	4 * int
  end 

  def purr
  	puts "*cat purrs*"
  end 

end

cat_array = []

50.times do 
# accounts = 100.times.collect { BankAccount.new(100) }

  # cat = 50.times.collect { Cat.new(50) }
  cat = Cat.new 
  puts cat.human_to_catyrs(25)
  puts cat.purr
  # cat_array[cat.human_to_catyrs, cat.purr] = cat 
  # cat_array << [cat.human_to_catyrs, cat.purr]
  # cat_array << Cat.new
end 
