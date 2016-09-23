
# require gems

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("quote_notes.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS quote_notes(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    quote VARCHAR(255),
    date DATE
  )
SQL


db.execute(create_table)

def quote_info(db, name, quote, date)
  db.execute("INSERT INTO quote_notes (name, quote, date) VALUES (?, ?, ?)", [name, quote, date])
end

# p quote_info( db, name, quote, date)

# p db.execute("SELECT * FROM quote_notes")

puts "Who said it?"
name = gets.chomp

puts "What did they say?"
quote = gets.chomp

puts "When did they say it? YYYY-MM-DD"
date = gets.chomp

p quote_info(db, name, quote, date)


p db.execute("SELECT * FROM quote_notes")


#YYYY-MM-DD
