class CharactersController < ApplicationController

    def index
        @characters = Character.all
        render json: CharacterSerializer.new(@characters).to_serialized_json
    end

    def show
        @character = Character.find(params[:id])
        render json: CharacterSerializer.new(@character).to_serialized_json
    end

    def female_characters
        #Custome 
    end


#End result of controller action, each action gives certain piece of data. Endpoint can be seen as that data.

    # def index
    #     @characters = Character.all
    #     render json: @characters
    # end

    # def show
    #     @character = Character.find(params[:id])
    #     render json: @character
    # end
end
