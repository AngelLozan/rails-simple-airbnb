class Flat < ApplicationRecord
  validates :name, :address, :price_per_night, :description, :number_of_guests, presence: true
end
