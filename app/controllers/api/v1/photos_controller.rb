class Api::V1::PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render json: @photos
  end


  def show
    @photo = Photo.find(params[:id])
    render json: @photo, status: :ok
  end

  # def new
  #   @photo = Photo.new
  #   render json: @photo, status: :ok
  # end

  def create
    @photo = Photo.create(photo_params)
    render json: @photo, status: :ok
  end
  
  def destroy
    @photo.delete
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :imageable_id, :imageable_type, :reception_id )
  end

end
