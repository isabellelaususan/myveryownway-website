class Pouch < ApplicationRecord
  belongs_to :product
  has_many :types
  has_many :colors
end
