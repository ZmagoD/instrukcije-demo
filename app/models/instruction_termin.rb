class InstructionTermin < ActiveRecord::Base
  belongs_to :instruction
  belongs_to :user
  
  def self.find_by_instructor(current_instructor)
    joins(:instruction).where( 'instructions.instructor_id = ?', current_instructor.id)
  end
end
