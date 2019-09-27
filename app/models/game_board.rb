class GameBoard < ApplicationRecord
    belongs_to :questions
    belongs_to :users
end
