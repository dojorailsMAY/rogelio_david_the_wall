class PostsController < ApplicationController
  def index
      if session[:id] == nil
        redirect_to '/users/index'
      else
        @user = User.find(session[:id])
        @posts = Post.all
      end
    
  end

  def create
    Post.create(user:User.find(session[:id]),content:params[:content])
    redirect_to '/'
  end
end
