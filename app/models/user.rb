class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    has_sercure_password
    has_many :games
end
