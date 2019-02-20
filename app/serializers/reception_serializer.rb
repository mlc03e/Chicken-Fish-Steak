class ReceptionSerializer < ActiveModel::Serializer
  belongs_to :creator
  has_many :guests
  has_many :photos, through: :guests
  has_many :comments, through: :guests
  attributes :id, :name, :date
end
