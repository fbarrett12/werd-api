class Location < ApplicationRecord
    has_many :slangs, dependent: :destroy
end
