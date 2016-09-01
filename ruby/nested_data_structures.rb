#Nested data structure of a freeway

freeway = {
	honda_civic:{
		seat_info: {total_seats: 5, seats_available: 3},
	
		names_of_passengers: ["Elvira", "Frankenstein"]
	},

	toyota_corolla:{
		seat_info: {total_seats: 5, seats_available: 1},

		names_of_passengers: ["Dracula", "Nosferatu", "Hubert", "Brunhilda"]
	},

	honda_crx:{
		seat_info: {total_seats: 2, seats_available: 1},

		names_of_passengers: ["Han Solo"]
	}

}

#p freeway

p freeway[:honda_civic][:seat_info][:total_seats]

p freeway[:toyota_corolla][:names_of_passengers][2]

p freeway[:honda_crx][:names_of_passengers][0]
