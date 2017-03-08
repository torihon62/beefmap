class PlaceToEat < ApplicationRecord
    has_many :beef_place_to_eats, dependent: :destroy
    has_many :beefs, through: :beef_place_to_eats
end
