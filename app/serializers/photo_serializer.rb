class PhotoSerializer < ActiveModel::Serializer
  # attributes :id, :image
  belongs_to :imageable, polymorphic: true
  attributes :id, :image, :imageable_id, :imageable_type, :reception_id, :guest_name

  def guest_name
    Guest.find(object.imageable_id).name
  end
end
