class Game < ApplicationRecord
    has_many :liked_games
    has_many :users, through: :liked_games
end
