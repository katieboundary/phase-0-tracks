
# require gems

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("quote_notes.db")

#Create the table and columns with data types
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS quote_notes(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    quote VARCHAR(255),
    date DATEv
  )
SQL

#If the table doesn't already exists (as per create_table method) the table will be created.
db.execute(create_table)


#Insert values into the table.
def quote_info(db, name, quote, date)
  db.execute("INSERT INTO quote_notes (name, quote, date) VALUES (?, ?, ?)", [name, quote, date])
end


#Loop through for user interface. Allow user to enter as many quotes as they like or type q to exit.
#Display previously entered quotes after each new quote entry is made.
loop do

	puts "Want to keep track of your favorite quotes? Type the name of the witty person who said it. "\
	  "Unless you're over quotes. Then type 'q' to quit."
	name = gets.chomp
	break if name == "q"
	
	puts "What did they say?"
	quote = gets.chomp
	
	puts "When did they say it? YYYY-MM-DD"
	date = gets.chomp

	
	p quote_info(db, name, quote, date)


	rows = db.execute("SELECT * FROM quote_notes")
	rows.each do |id, name, quote, date|
		puts "'#{quote}' - #{name} #{date}"
	end
end

#Driver code
# p quote_info(db, name, quote, date)
# p db.execute("SELECT * FROM quote_notes")



