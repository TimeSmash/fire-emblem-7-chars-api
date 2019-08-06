class CharactersController < ApplicationController

    def index
        @characters = Character.all
        render json: CharacterSerializer.new(@characters).to_serialized_json
    end

    def show
        @character = Character.find(params[:id])
        render json: CharacterSerializer.new(@character).to_serialized_json
    end


# BELOW IS FOR LEARNING PURPOSES ONLY! 
#Default routes seen below. If no serialization used, all attributes of object will be sent over.

    # def index
    #     @characters = Character.all
    #     render json: @characters
    # end

    # def show
    #     @character = Character.find(params[:id])
    #     render json: @character
    # end


end
