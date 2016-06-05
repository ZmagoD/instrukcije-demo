class InstructionsController < ApplicationController
  before_action :authenticate_instructor!
  before_action :find_insturction, only: [:edit, :destroy, :update]
  
  def new  
    @instruction = Instruction.new
  end

  def create 
    @instruction = Instruction.new(instructions_params)
    
    if @instruction.save
      current_instructor.instructions << @instruction
      flash[:success] = 'Uspešno objavljen oglas za inštrukcije'
      redirect_to root_path
    else
      flash[:error] = 'Akcija ni uspela'
      redirect_to :new
    end
  end

  def update 
    @instruction.update_attributes(instructions_params)
    if @instruction.save
      flash[:success] = 'Uspešno objavljen oglas za inštrukcije'
      redirect_to root_path
    else
      flash[:error] = 'Akcija ni uspela'
      redirect_to :edit
    end
  end

  def edit
  end

  def destroy
    @instruction.destroy!
    flash[:success] = 'Oglas za inštukcije vspešno izbrisan!'
    redirect_to root_path
  end

  private

  def find_insturction
    @instruction = Instruction.find_by_id(params[:id])
  end
  def instructions_params
    params.require(:instruction).permit(:termin, :predmet, :cena) 
  end
end
