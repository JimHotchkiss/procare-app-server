class Api::V1::InstructionsController < ApplicationController

    def index 
        @instructions = Instruction.all
    end 

    
end
