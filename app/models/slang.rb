class Slang < ApplicationRecord
    has_many :quesions
    has_many :choices, through: :questions, dependent: :destroy
    belongs_to :location, optional: true, dependent: :destroy

    def self.scrambler
        slangWords = Slang.all
        shuffledWords = slangWords.shuffle()
        
        return shuffledWords
    end
end
