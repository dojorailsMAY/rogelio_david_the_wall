class UsersController < ApplicationController
  def index
  
    
  end

  def create
    session[:id] = User.create(name:params[:name]).id
    redirect_to '/'
  end

  def logout
    session.clear
    redirect_to '/'
    
  end

end
