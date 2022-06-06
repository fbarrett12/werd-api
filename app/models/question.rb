class Question < ApplicationRecord
  belongs_to :slang
  belongs_to :choice

  def self.generator
    
    answerChoices = Choice.all
    
    
    shuffleChoices = answerChoices.shuffle!()

    bye
    
  end

  # function shuffle(a) {
  #   for (let i = a.length - 1; i > 0; i--) {
  #   const j = Math.floor(Math.random() * (i + 1));
  #   [a[i], a[j]] = [a[j], a[i]];
  #   }
  #   return a;
  #   }
end
