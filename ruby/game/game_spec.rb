require_relative 'game'

describe Game do 
	let(:game) {Game.new(word)}
	let(:word) {"go"}


	it "Displays letters in a word as dashes" do
		expect(game.word_display).to eq "--"
	end

	it "returns the number of guesses available, 3 more than the length of the word" do 
		expect(game.number_of_guesses).to eq 5
	end

	it "stores letters in an array and sees if the guessed letter is in the word" do
		game.guessed_array("o")
		expect(game.guessed_letters).to eq ['o']

	end

	it "Tracts how many guesses have been made based on how many letters are in guessed_letters" do
		expect(game.guess_count).to eq 0
		game.guessed_array("g")
		expect(game.guess_count).to eq 1
	end

	it "tells the player that they lost if they ran out of guesses or congratulates them if they guess the word" do
		expect(game.win_or_lose).to eq nil
		game.guessed_letters = ["g", "o"]
		expect(game.win_or_lose).to eq "Congratulations! You win!"
		game.guessed_letters = ["w", "e", "t", "r", "y"]
		expect(game.win_or_lose).to eq "Too many guesses. Game over"
	end
end

