class GuestSerializer < ActiveModel::Serializer
  belongs_to :reception
  has_many :photos
  has_many :comments
  attributes :id, :name, :rsvp
end
