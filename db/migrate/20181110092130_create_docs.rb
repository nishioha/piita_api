class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
      t.string :uuid, limit: 36, nil: false
      t.references :user
      t.string :title
      t.text :body
      t.string :status
      t.datetime :posted_at
      t.timestamps
    end

    add_index :docs, :uuid, unique: true
  end
end
