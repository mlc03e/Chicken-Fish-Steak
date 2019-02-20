class Api::V1::CreatorsController < ApplicationController

  def index
    @creators = Creator.all
    render json: @creators
  end


  def show
    @creator = Creator.find(params[:id])
    render json: @creator, status: :ok
  end

  def new
    @creator = Creator.new
    render json: @creator, status: :ok
  end

  def create
    @creator = Creator.create(creator_params)
    render json: @creator, status: :ok
  end

  def destroy
    @creator.delete
    @creator = Creator.find(params[:id])
  end

  private

  def creator_params
    params.require(:creator).permit(:id, :name)
  end


end
