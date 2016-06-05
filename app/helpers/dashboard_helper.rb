module DashboardHelper
  
  def already_signed(instruction, user)
    object = InstructionTermin.where('user_id=? AND instruction_id=?',  user.id, instruction.id)
    !object.exists?
  end
end
