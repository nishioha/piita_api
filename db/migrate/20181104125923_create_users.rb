class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_id, null: false
      t.string :name
      t.string :description
      t.string :email, null: false
      t.string :password, nil: false
      t.timestamps
    end

    add_index :users, :user_id, unique: true
    add_index :users, :email, unique: true
  end
end
