class Reception < ApplicationRecord
  belongs_to :creator
  has_many :guests
  has_many :photos through :guests
  has_many :comments through :guests
end
