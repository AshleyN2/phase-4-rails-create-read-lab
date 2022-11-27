class PlantsController < ApplicationController
    # GET /plants
    def index
        plants = Plant.all
        render json: plants
    end

    # GET /plants/:id
    def show 
        plants = Plant.find(params[:id])
        if plants
            render json: plants
        else 
            render json: { error: "Plant not found" }, status: :not_found
        end
    end

    def create 
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: :created
    end

end
