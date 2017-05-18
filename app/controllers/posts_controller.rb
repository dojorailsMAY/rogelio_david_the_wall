class PostsController < ApplicationController
  def index
      # if session[:id] == nil
      if session[:id].nil?
        redirect_to '/users/index'
      else
        @user = User.find(session[:id])
        @posts = Post.all.includes(:comments)
      end
    
  end

  def create
    Post.create(user:User.find(session[:id]),content:params[:content])
    # user = User.find(session[:id])
    # user.posts.create(content: params[:content])
    redirect_to '/'
  end
end
