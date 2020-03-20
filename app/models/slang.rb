class Slang < ApplicationRecord
    has_many :quesions
    has_many :choices, through: :questions, dependent: :destroy
end
