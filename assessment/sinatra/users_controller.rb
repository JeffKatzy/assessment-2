class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new
get '/users/new' do
  erb :new
end
  # create
post '/users' do
  @user=User.new(params)
  redirect to "/users/#{user.id}"
end
  # index
  get '/users' do
    @users=User.all
    erb :index
  end

  # show
get '/user/:id' do
  @user=User.find(params[:id])
  erb :show
end
  # edit
get '/users/:id/edit' do
  @user=User.find(params[:id])
  erb :edit
end
  # update
patch '/users/:id' do
  @user=User.find(params[:id])
  @user.update(name:params[:name],hometown:params[:hometown])
  redirect to "/users/#{params[:id]}"
end
  # destroy
  delete '/users/:id/delete' do
    @user = User.find(:id)
    @user.destroy
    redirect to '/users'
  end
end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
