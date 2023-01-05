class BirdsController < ApplicationController

    #GET Birds
    def index 
        birds = Bird.all 
        render json: birds
    end 

    #GET a bird
    def show
        bird = Bird.find(params[:id])
        render json: bird
    rescue ActiveRecord::RecordNotFound 
        render json: "Bird not found", status: :not_found
    end 
end
