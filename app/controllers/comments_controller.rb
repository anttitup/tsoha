class CommentsController < ApplicationController
  before_filter :authorized, :except => [:index,:show]
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end
  
  def create
    @comment = Comment.new(params[:comment])    
  end

  def update
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end
end
