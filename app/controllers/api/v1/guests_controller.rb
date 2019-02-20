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

  private

  def guest_params
    params.require(:guest).permit(:id, :name, :rsvp, :reception_id)
  end


end
