class Bag < ApplicationRecord
  belongs_to :product
  has_many :types
  has_many :colors
end
