class Photo < ApplicationRecord
  has_one :album
  has_many :comments
end
