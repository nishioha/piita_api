class CreateDocTags < ActiveRecord::Migration[5.2]
  def change
    create_table :doc_tags do |t|
      t.references :doc
      t.references :tag
      t.timestamps
    end

    add_index :doc_tags, [:doc_id, :tag_id], unique: true
  end
end
