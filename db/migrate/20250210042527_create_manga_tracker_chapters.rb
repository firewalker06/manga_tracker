class CreateMangaTrackerChapters < ActiveRecord::Migration[8.0]
  def change
    create_table :manga_tracker_chapters do |t|
      t.references :manga, null: false, foreign_key: { to_table: :manga_tracker_manga }
      t.string :title

      t.timestamps
    end
  end
end
