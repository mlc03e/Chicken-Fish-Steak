class Guest < ApplicationRecord
  belongs_to :reception
  has_many :photos
  has_many :comments
end
