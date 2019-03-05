class Api::V1::GuestsController < ApplicationController

  def index
    @guests = Guest.all
    render json: @guests
  end


  def show
    @guest = Guest.find(params[:id])
    render json: @guest, status: :ok
  end

  def new
    @guest = Guest.new
    render json: @guest, status: :ok
  end

  def create
    @guest = Guest.create(guest_params)
    render json: @guest, status: :ok
  end

  def destroy
    @guest.delete
    @guest = Guest.find(params[:id])
  end

  def login
   @guest = Guest.all.find_by(name: params[:name])
   if @guest.nil?
     render json: { error: "Guest not found" }, status: :error
   else
     if @guest.password==(params[:password])
       render json: @guest
     else
       render json: { error: "Incorrect password" }, status: :error
     end
   end
 end

  private

  def guest_params
    params.require(:guest).permit(:name, :rsvp, :reception_id, :password, :email)
  end


end
