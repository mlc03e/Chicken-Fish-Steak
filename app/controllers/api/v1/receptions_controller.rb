class Api::V1::ReceptionsController < ApplicationController

  def index
    @receptions = Reception.all
    render json: @receptions
  end

  def show
    @reception = Reception.find(params[:id])
    render json: @reception, status: :ok
  end

  def newguest
    @guest = Guest.new(name: params[:name], rsvp: params[:rsvp], reception_id: params[:reception_id],password: params[:password],email: params[:email])
    @reception= Reception.find(params[:reception_id])
    @reception.guests<<@guest
    @guest.save
    # byebug
    render json: @guest, status: :ok
  end

  def create
    @reception = Reception.create(reception_params)
    # byebug
    render json: @reception, status: :ok
  end

  def destroy
    @reception.delete
    @reception = Reception.find(params[:id])
  end

  private

  def reception_params
    # byebug
    params.require(:reception).permit(:name, :date, :creator_id)
  end

end
