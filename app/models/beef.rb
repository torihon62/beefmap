class Beef < ApplicationRecord
    has_many :beef_categories
    has_many :categories, through: :beef_categories    
end
