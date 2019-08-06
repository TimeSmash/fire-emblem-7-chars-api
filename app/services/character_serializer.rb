class CharacterSerializer

    def initialize(character_object)
        @character = character_object
    end

    def to_serialized_json
        options = {
            except: [:created_at, :updated_at]
        }
        @character.to_json(options)
    end

end

