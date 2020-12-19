class GamesController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games)
    end

    def history
        games = Game.retrieve_top_ten_games
        render json: GameSerializer.new(games)
    end

    def create
        game = Game.new(game_params)

        if game.save
            render json: GameSerializer.new(game)
        else
            render json: {errors: game.errors.full_messages.to_sentence}
        end
    end

    def update
        game = Game.find_by_id(params[:id])
        if game.update(game_params);
            render json: GameSerializer.new(game)
        else 
            render json: {errors: game.errors.full_messages.to_sentence}
        end
    end


    private

    def game_params
        params.require(:game).permit(:name, :points)
    end
end
