class Beef < ApplicationRecord
    has_many :beef_categories, dependent: :destroy
    has_many :categories, through: :beef_categories

    has_many :beef_place_to_eats, dependent: :destroy
    has_many :place_to_eats, through: :beef_place_to_eats

    has_many :beef_evaluations, dependent: :destroy
    has_many :evaluations, through: :beef_evaluations

    accepts_nested_attributes_for :beef_categories, allow_destroy: true  
    accepts_nested_attributes_for :beef_place_to_eats, allow_destroy: true  
    accepts_nested_attributes_for :beef_evaluations, allow_destroy: true  
end
