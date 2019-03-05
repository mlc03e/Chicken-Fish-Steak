class Api::V1::ReceptionsController < ApplicationController

  def index
    @receptions = Reception.all
    render json: @receptions
  end

  def show
    @reception = Reception.find(params[:id])
    render json: @reception, status: :ok
  end

  # def new
  #   @reception = Reception.new
  #   render json: @reception, status: :ok
  # end

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
