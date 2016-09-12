#Take in player one input (player two look away!). Don't print out what they entered. Can I hide what they entered? 
#input: string, convert into array?
#output:nothing or take up space to remove the word from the screen?
#Tell player two how many guesses they have. (number of guesses is related to the length of the word.LENGTH)
#output:string
#Show how many letters are in the word "_ _ _ _"
#input:string, convert into array? Only take in one character?
#output:"_ ..." /or "Guess again"
#Repeated guesses don't count against them (IF user input is equal previous input then counter does not decrease)
#When the user guesses a correct letter, it will fill. "a _ _ _"
#input: string
#output: see above
#Give a congratulatory message upon winning and a taunting message if they lose.


class Game

	attr_accessor :word, :display_word, :total_guesses

	def initialize(word)
		# @guess_count = 0
		# @game_over = false
		@word = word
		# @total_guesses = word.length + 3
		# @guessed_letters = []

	end

	def word_display
		display_word = ""
		word.length.times do 
			display_word << "-"
		end
		return display_word
	end

	def number_of_guesses
		total_guesses = word.length + 3
		return total_guesses
	end

	#when guess_count == total guesses
		#end game
	#guess_count += 1
	#word.include?(guessed_letter)
	#if 



	# def include?(char)

	# end


end

game = Game.new("tree")
p game.word_display
p game.number_of_guesses
#puts "you have # guesses. Guess a character."



