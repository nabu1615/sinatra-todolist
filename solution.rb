require 'sinatra'
require 'make_todo'

# List
get '/' do
	@tasks = Tarea.all
	erb :index
end

# New
post '/' do
	@task = Tarea.create("#{params["title"]}")
	redirect '/'
end

# Update
get '/completar/:id' do
	task_u = Tarea.update(params["id"])
	redirect '/'
end

# Delete
get '/delete/:id' do
	task_u = Tarea.destroy(params["id"])
	redirect '/'
end

