class Api::V1::InstructionsController < ApplicationController

    def index 
        instructions = Instruction.all 
        render json: instructions 
    end 

    def show
        instruction = Instruction.find(params[:id])
        render json: instruction

    end 

    
    private

    def instruction_params
        params.require(:instruction).permit(:title)
    end 
end
