require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
require('pry')
require('pg')
require 'uri'
also_reload('lib/**/*.rb')

uri = URI.parse(ENV['DATABASE_URL'])
DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)

# DB = PG.connect({:dbname => "volunteer_tracker"})

get("/") do
  @projects = Project.all()
  erb(:index)
end

post('/project_input') do
  title = params.fetch("title")
  project = Project.new({:title => title, :id => nil})
  project.save()
  @projects = Project.all()
  erb(:index)
end

get("/project/:id") do
  @project = Project.find(params.fetch("id").to_i())
  erb(:project)
end

patch("/project/:id") do
  title = params.fetch('title')
  @project = Project.find(params.fetch("id").to_i())
  @project.update({:title => title})
  @projects = Project.all()
  erb(:index)
end

post("/project/:id") do
  @project = Project.find(params.fetch("id").to_i())
  project_id = @project.id
  name = params.fetch("name")
  volunteer = Volunteer.new({:name => name, :project_id => project_id, :id => nil})
  volunteer.save()
  # @projects = Project.all()
  erb(:project)
end

delete(("/project/:id")) do
  @project = Project.find(params.fetch("id").to_i())
  @project.delete()
  @projects = Project.all()
  erb(:index)
end

get("/volunteer/:id") do
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  erb(:volunteer)
end

patch("/volunteer/:id") do
  name = params.fetch('name')
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  @volunteer.update({:name => name})
  # @volunteers = Volunteer.all()
  erb(:volunteer)
end

delete("/volunteer/:id") do
  @volunteer = Volunteer.find(params.fetch("id").to_i())
  @volunteer.delete()
  erb(:removed)
end
