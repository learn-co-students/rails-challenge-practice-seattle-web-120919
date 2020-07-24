class BuildingsController < ApplicationController
    before_action :find_building, only: [:show, :edit]
    
    def index
        @buildings = Building.all
    end

    def new
        @building = Building.new
    end

    def create
        @building = Building.new(building_params)
        if @building.save
            redirect_to @building
        else 
            render :new 
        end
    end

    def update
        @building = Building.find(params[:id])
        @building.update(building_params)
        if @building.save
            redirect_to @building
        else
            render :edit
        end
    end

    private
    def find_building
        @building = Building.find(params[:id])
    end

    def building_params
        params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
    end
end