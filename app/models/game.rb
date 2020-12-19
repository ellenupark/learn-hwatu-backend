class Game < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { maximum: 30 }
    has_many :players, dependent: :destroy

    scope :retrieve_top_ten_games, -> { order(points: :desc).limit(10) }
end
