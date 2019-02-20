class Creator < ApplicationRecord
  has_many :receptions
  has_many :guests, through: :receptions

end
