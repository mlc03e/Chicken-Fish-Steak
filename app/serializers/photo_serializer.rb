class PhotoSerializer < ActiveModel::Serializer
  belongs_to :guest
  attributes :id, :image
end
