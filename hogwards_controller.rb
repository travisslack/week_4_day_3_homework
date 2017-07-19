require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/student')
require_relative('./models/house')

get '/students' do 
  @students = Student.all()
  erb(:index)
end 

get '/students/new' do
  @houses = House.all()
  erb(:new)
end 

post '/students' do
  @student = Student.new(params)
  @student.save
  erb( :create )
end 

