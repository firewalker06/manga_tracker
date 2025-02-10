class CreateChapters < ActiveRecord::Migration[8.0]
  def change
    create_table :chapters do |t|
      t.references :manga, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
