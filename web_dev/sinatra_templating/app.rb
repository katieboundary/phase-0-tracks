# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @campus = db.execute("SELECT * FROM reviews")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campus' do
  erb :campus
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/reviews' do 
	db.execute("INSERT INTO reviews (name, campus, review) VALUES (?,?,?)", [params['name'], params['campus'], params['review']])
  redirect '/'
end

# add static resources
