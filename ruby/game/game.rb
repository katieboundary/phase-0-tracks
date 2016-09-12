
#Pseudocode:
#Take in player one input. Iterate through the word and replace with a dash. 
#Show how many letters are in the word "_ _ _ _"
#Calculate how many guesses can be made based on length of word plus 3.
#Output dashed version of word that shows how many letters are there to guess.
#Tell player two to guess one letter. If correct, display correct letter with dashes for remaining letters.
#When the user guesses a correct letter, it will fill. "a _ _ _"
#store all guessed letters in an array
#If they guess the same letter twice, tell them.
#When the guess count is maxed out, tell them they lose and end the game.
#If they guess the word, congratulate them and end the game.
#input: string
#output: see above
#Give a congratulatory message upon winning and a taunting message if they lose.


class Game

	attr_accessor :word, :display_word, :guessed_letters

	def initialize(word)
		self.word = word
		self.guessed_letters = []
	end

	def self.play_game
		puts "Player one, Type in a word."
		word = gets.chomp
		game = Game.new(word)
		p game.word_display
		p game.number_of_guesses

		loop do 
			puts "Enter your guess (letter)."
			letter = gets.chomp 
			game.guessed_array(letter)
			p game.word_display
			break if game.win_or_lose
		end
	end


	def number_of_guesses
		word.length + 3
	end


	def word_display
		display_word = ""
		word.each_char do |l|
			if guessed_letters.include? l
				display_word << l
			else
				display_word << "-"
			end

		end

		return display_word
	end


	def guessed_array(letter)
		if guessed_letters.include?(letter)
			puts "Sorry, you already guessed that."
		else
			guessed_letters << letter
		end

		if word.include?(letter)
		
		else
			puts "Sorry, guess again."
		end

	end

	def guess_count
		guessed_letters.size
	end

	def win_or_lose
		if guess_count == number_of_guesses
			p "Too many guesses. Game over"
		elsif word_display == word
			p "Congratulations! You win!"
			
		end
	end

	def win_lose
	end

end


Game.play_game


#Driver Code
# game = Game.new("tree")
# p game.word_display
# p game.number_of_guesses

# loop do 
# 	puts "Enter your guess (letter)."
# 	letter = gets.chomp 
# 	game.guessed_array(letter)
# 	p game.word_display
# 	break if game.win_or_lose
# end




