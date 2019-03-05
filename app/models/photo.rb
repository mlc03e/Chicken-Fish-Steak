class Photo < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  belongs_to :reception
end
