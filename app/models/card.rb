class Card < ApplicationRecord
    has_many :cards_players
    has_many :players, through: :cards_players
end
