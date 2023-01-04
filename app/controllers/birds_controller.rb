class BirdsController < ApplicationController

    #GET Birds
    def index 
        birds = Bird.all 
        render json: birds
    end 
end
