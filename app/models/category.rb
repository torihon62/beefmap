class Category < ApplicationRecord
    has_many :beef_categories, dependent: :destroy
    has_many :beefs, through: :beef_categories
end
