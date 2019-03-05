class GuestSerializer < ActiveModel::Serializer
  belongs_to :reception
  has_many :photos, as: :imageable
  has_many :comments, as: :commentable
  attributes :id, :name, :rsvp, :password, :email
end
