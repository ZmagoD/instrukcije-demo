class InstructionTerminsController < ApplicationController
  before_action :authenticate_user!, only: :create
  before_action :authenticate_instructor!, only: :index
  
  def index
    @instruction_termins = InstructionTermin.find_by_instructor(current_instructor)
  end
  
  def create
    @instruction_termin = InstructionTermin.new(user_id: current_user.id, instruction_id: params[:instruction_id])
    
    if @instruction_termin.save
      flash[:success] = "Uspešno ste se prijavili na inštukcije"
      redirect_to root_path
    else
      flash[:error] = 'Prijava je bila neuspešna'
      redirect_to root_path
    end
  end
end
