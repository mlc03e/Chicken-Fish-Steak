class PhotoSerializer < ActiveModel::Serializer
  # attributes :id, :image
  belongs_to :imageable, polymorphic: true
  attributes :id, :image, :imageable_id, :imageable_type, :reception_id
end
