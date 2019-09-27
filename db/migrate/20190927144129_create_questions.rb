class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :answer
      t.string :question
      t.string :value
      t.string :category

      t.timestamps
    end
  end
end
