class Game < ApplicationRecord
    has_many :players, dependent: :destroy
end
