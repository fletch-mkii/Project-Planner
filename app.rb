require "sinatra"
require_relative "config/application"

get "/" do
  @projects = Project.all
  # @users = User.all
  erb :index

end

get '/projects/:id' do
  @project = Project.find(params[:id])
  @users = @project.users
  @tasks = @project.tasks

  erb :show
end
