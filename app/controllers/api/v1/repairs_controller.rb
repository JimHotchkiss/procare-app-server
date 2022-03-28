class Api::V1::RepairsController < ApplicationController

    def index 
        @repair = Repair.all
    end 


end
