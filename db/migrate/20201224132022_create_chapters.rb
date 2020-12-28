class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.string :chapter_name
      t.references :book, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
