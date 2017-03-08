class BeefCategory < ApplicationRecord
  belongs_to :beef, optional: true
  belongs_to :category
end
