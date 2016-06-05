class Instruction < ActiveRecord::Base
  belongs_to :instructor
  has_many :instruction_termins
  
  validates :termin, presence: true
  validates :predmet, presence: true
  validates :cena, presence: true
end
