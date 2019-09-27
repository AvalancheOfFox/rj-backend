class CreateGameBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :game_boards do |t|
      t.integer :question_id
      t.integer :score

      t.timestamps
    end
  end
end
