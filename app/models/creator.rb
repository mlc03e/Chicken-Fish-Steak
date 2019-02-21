class Creator < ApplicationRecord
  has_many :receptions
  has_many :guests, through: :receptions
  has_many :photos, as: :imageable
  has_many :comments, as: :commentable
end
