class DashboardController < ApplicationController
  before_action :authenticate_user, only: :take_termin
  def index
    @instructions = Instruction.all
  end
end
