# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Write a GET route that displays an address.
get '/contact/:person/:address' do
  "#{params[:person]}'s address is #{params[:address]}."
end

# Write a GET route that takes a person's name as a query parameter and says 'Good job, <name>!'.
# If there's no parameter, the route should just say 'Good job!'.
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# Write a GET route that takes two separate integers as route parameters.
# Add the two numbers and respond with the result.
get '/add_nums/:int1/:int2' do
  int1 = params[:int1].to_i
  int2 = params[:int2].to_i
  result = int1 + int2
  result.to_s
end

# Write a GET route that takes a campus location as a query parameter and responds with all students at that location.
get '/' do
  campus = params[:campus]
  response = ""
  students = db.execute("SELECT * FROM students WHERE campus=?", [campus])
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end