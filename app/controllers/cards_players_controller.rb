class CardsPlayersController < ApplicationController
    def index
        cards_players = CardsPlayer.all
        render json: CardsPlayerSerializer.new(cards_players)
    end

    def update
        cards_player = CardsPlayer.find_by_id(params[:id])
        if cards_player.update(cards_players_params);
            render json: CardsPlayerSerializer.new(cards_player)
        else 
            render json: {errors: cards_player.errors.full_messages.to_sentence}
        end
    end

    private

    # Only allow a trusted parameter "white list" through.
    def cards_players_params
        params.require(:cards_player).permit(:player_id, :card_id, :matched)
    end
end
