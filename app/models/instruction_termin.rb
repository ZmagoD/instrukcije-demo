class InstructionTermin < ActiveRecord::Base
  belongs_to :instruction
  belongs_to :user
end
