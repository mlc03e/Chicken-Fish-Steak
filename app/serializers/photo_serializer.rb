class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image
  belongs_to :imageable, polymorphic: true

end
