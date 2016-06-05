class InstructionTermin < ActiveRecord::Base
  belongs_to :instruction
  belongs_to :user
  
  def self.find_by_user(current_user)
    where( user_id: current_user)
  end
end
