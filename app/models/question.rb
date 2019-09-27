class Question < ApplicationRecord
    has_many :game_boards, foreign_key: "gameboard_id"
    has_many :users, through: :game_boards
end

