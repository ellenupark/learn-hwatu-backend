class CardsPlayer < ApplicationRecord
  belongs_to :card
  belongs_to :player
end
