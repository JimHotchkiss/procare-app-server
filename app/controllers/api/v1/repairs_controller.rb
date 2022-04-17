class Api::V1::RepairsController < ApplicationController

    def index 
        repairs = Repair.all 
        render json: repairs 
    end 

    def show
        repair = Repair.find(params[:id])
        render json: repair

    end 

    
    private

    def repair_params
        params.require(:repair).permit(:title, :description)
    end 
end
