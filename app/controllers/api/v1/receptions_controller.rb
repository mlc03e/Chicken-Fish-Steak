class Api::V1::ReceptionsController < ApplicationController

  def index
    @receptions = Reception.all
    render json: @receptions
  end


  def show
    @reception = Reception.find(params[:id])
    render json: @reception, status: :ok
  end

  def new
    @reception = Reception.new
    render json: @reception, status: :ok
  end

  def create
    @reception = Reception.create(reception_params)
    render json: @reception, status: :ok
  end

  def destroy
    @reception.delete
    @reception = Reception.find(params[:id])
  end

  private

  def reception_params
    params.require(:reception).permit(:id, :name, :rdate, :creator_id)
  end

end
