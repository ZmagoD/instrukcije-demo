class Instruction < ActiveRecord::Base
  belongs_to :instructor
  
  validates :termin, presence: true
  validates :predmet, presence: true
  validates :cena, presence: true
end
