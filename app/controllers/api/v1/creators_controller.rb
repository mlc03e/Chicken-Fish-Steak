class Api::V1::CreatorsController < ApplicationController

  def index
    @creators = Creator.all
    render json: @creators
  end


  def show
    @creator = Creator.find(params[:id])
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

  def login
   @creator = Creator.all.find_by(name: params[:name])
   if @creator.nil?
     render json: { type: "name", error: "Creator not found" }, status: :error
   else
     if @creator.password==(params[:password])
       render json: @creator
     else
       render json: { error: "Incorrect password" }, status: :error
     end
   end
 end

  private

  def creator_params
    params.require(:creator).permit(:id, :name, :password)
  end


end
