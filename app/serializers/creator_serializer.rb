class CreatorSerializer < ActiveModel::Serializer
  has_many :receptions
  has_many :guests, through: :receptions
  attributes :id, :name
end
