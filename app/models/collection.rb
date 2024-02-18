class Collection < ApplicationRecord
  has_many :products
  has_many :photos
end
