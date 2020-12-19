class CardsController < ApplicationController
    def index
        if params[:player_id]
            card = Card.retrieve_card_from_deck
            render json: CardSerializer.new(card)
        else
            cards = Card.all
            render json: CardSerializer.new(cards)
        end
    end

    def show
        card = Card.find_by_id(params[:id])
        render json: CardSerializer.new(card)
    end
end
