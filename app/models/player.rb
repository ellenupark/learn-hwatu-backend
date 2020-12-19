class Player < ApplicationRecord
  belongs_to :game
  has_many :cards_players
  has_many :cards, through: :cards_players
end
