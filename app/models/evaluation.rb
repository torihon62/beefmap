class Evaluation < ApplicationRecord
    has_many :beef_evaluations, dependent: :destroy
    has_many :beefs, through: :beef_evaluations
end
