class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
