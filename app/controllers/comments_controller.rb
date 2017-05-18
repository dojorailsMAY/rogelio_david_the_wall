class CommentsController < ApplicationController
  def create
    Comment.create(content:params[:content],user:User.find(session[:id]),post:Post.find(params[:id]))
    redirect_to '/'
  end

  def index
    @comments = Comment.all
    redirect_to '/'
  end
  
end
