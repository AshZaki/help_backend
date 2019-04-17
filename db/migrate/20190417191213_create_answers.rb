class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :answer
      t.string :result

      t.timestamps
    end
  end
end
