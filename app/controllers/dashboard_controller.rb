class DashboardController < ApplicationController
  
  def index
    @instructions = Instruction.all
  end
end
