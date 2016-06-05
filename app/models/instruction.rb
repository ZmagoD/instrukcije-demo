class Instruction < ActiveRecord::Base
  belongs_to :instructor
  has_many :instruction_termin, dependent: :destroy
  
  validates :termin, presence: true
  validates :predmet, presence: true
  validates :cena, presence: true
end
