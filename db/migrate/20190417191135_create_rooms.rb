class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :topic
      t.string :password
      t.string :description
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
