def hi_there
	puts "Hi!"
	yield("Maggie", "Katie")
end

hi_there { |name1, name2| puts "Hey good work #{name1} and #{name2}"}

#first attempt didn't work . did on line 13
# dogs = []
# dogs << "trig", "pugs", "stella", "chauncey"
# p dogs

# #array.each
dogs = ["trig", "pugs", "stella", "chauncey"]
puts "original data:"
p dogs

dogs.each { |name| puts "some fav dog names are: #{name}" }

#hash.each
dogs = {"trig" => "chihuahua", "pugs" => "pug", "chauncey" => "husky"}
puts "original data:"
p dogs

dogs.each { |name, breed| puts "#{name} is a #{breed}" }

#array.map
fruit = ["apple", "orange", "banana"]
puts "Original data:"
p fruit

fruit.map! do |type|
	puts type
	"veggie's rule"
end

puts "After .map! call: "
p fruit

# A method that iterates through the items, 
# deleting any that meet a certain condition
# (for example, deleting any numbers that are less than 5).
#array
numbers = [5, 1, 3, 10, 25]
puts "Original data:"
p numbers

numbers.reject!{|x| x < 7}
puts "After"
p numbers

#hash
numbers = { "a" => 5, "b" => 10, "c" => 15}
numbers.delete_if {|letter, number| number >= 10}
p numbers

# A method that filters a data structure 
#for only items that do satisfy a certain condition 
#(for example, keeping any numbers that are less than 5).

#array
furniture = ["sofa", "chair", nil, "couch", nil ]
puts "Original data"
p furniture

furniture.compact!
puts "After"
p furniture

#hash
numbers = { "a" => 5, "b" => 10, "c" => 15}
numbers.keep_if {|letter, number| number >= 10}
p numbers

# A different method that filters a data structure 
#for only items satisfying a certain condition -- 
#Ruby offers several options!
#array
numbers = [5, 3, 1, 10, 25]
puts "original data"
p numbers

new_numbers = numbers.keep_if{|x| x == 5}
puts "After"
p new_numbers

#hash

numbers = { "a" => 5, "b" => 10, "c" => 15}
numbers.select! {|letter, number| letter > "a"}
numbers.select! {|letter, number| number < 10}
p numbers

# A method that will remove items from a data structure 
#until the condition in the block evaluates to false, 
#then stops (you may not find a perfectly working option 
#for the hash, and that's okay).

#array

[1, 2].empty?

#hash

n1 = {"a" => 3, "b" => 8, "c" => 2}
n2 = {"b" => 8, "c" =>1, "a" =>3}

n1 == n2

