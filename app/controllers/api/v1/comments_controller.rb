class Api::V1::CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end


  def show
    @comment = Comment.find(params[:id])
    render json: @comment, status: :ok
  end

  def new
    @comment = Comment.new
    render json: @comment, status: :ok
  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment, status: :ok
  end

  def destroy
    @comment.delete
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:id, :guest_id, :content)
  end


end
