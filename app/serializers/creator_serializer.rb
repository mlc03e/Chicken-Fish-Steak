class CreatorSerializer < ActiveModel::Serializer
  has_many :receptions
  has_many :guests, through: :receptions
  has_many :photos, as: :imageable
  has_many :comments, as: :commentable
  attributes :id, :name
end
