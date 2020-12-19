class PlayersController < ApplicationController
    def index
        players = Player.all 
        render json:  PlayerSerializer.new(players)
    end

    # def show
    #     player = Player.find_by(id: params[:id])
    #     render json: PlayerSerializer.new(player)
    # end

    # def create
    #     player = Player.new(player_params)

    #     if player.save
    #         render json: PlayerSerializer.new(player)
    #     else
    #         render json: {errors: player.errors.full_messages.to_sentence}
    #     end
    # end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      player = Player.find_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_params
        params.require(:player).permit(:role)
    end
end
