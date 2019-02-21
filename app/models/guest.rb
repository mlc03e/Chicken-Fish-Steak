class Guest < ApplicationRecord
  belongs_to :reception
  has_many :photos, as: :imageable
  has_many :comments, as: :commentable
end
