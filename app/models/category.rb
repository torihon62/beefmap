class Category < ApplicationRecord
    has_many :beef_categories
    has_many :beefs, through: :beef_categories
end
