class User < ApplicationRecord
    has_secure_password
    has_many :game_boards
    has_many :questions, through: :game_boards
end
