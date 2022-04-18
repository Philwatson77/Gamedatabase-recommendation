class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    has_secure_password
    has_many :liked_games
    has_many :games, through: :liked_games
    
  
end
