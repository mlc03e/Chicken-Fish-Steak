class CreatorSerializer < ActiveModel::Serializer
  belongs_to :guest
  attributes :id, :name
end
