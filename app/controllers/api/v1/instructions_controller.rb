class Api::V1::InstructionsController < ApplicationController

    def index 
        @instructions = Instruction.all
        render json: @instructions.to_json
       
    end 

    def show
        instruction = Instruction.find(params[:id])
        render json: instruction
    end 

    private 

    def insruction_params
        params.require(:instruction).permit(:instruction)
    end 

    
end
