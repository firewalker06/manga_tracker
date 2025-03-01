class AddReaderUrl < ActiveRecord::Migration[8.0]
  def change
    add_column :manga_tracker_manga, :reader_url, :string
  end
end
