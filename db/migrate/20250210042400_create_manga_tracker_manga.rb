class CreateMangaTrackerManga < ActiveRecord::Migration[8.0]
  def change
    create_table :manga_tracker_manga do |t|
      t.string :title
      t.string :feed_source

      t.timestamps
    end
  end
end
