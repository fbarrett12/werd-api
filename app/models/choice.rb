class Choice < ApplicationRecord
    has_many :quesions
    has_many :slangs, through: :questions, dependent: :destroy
end
