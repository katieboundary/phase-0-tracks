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

	# context 'longer word' do
	# 	let(:word) { 'longword' }
	# end

end

