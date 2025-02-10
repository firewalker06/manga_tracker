module MangaTracker
  class Manga < ApplicationRecord
    self.table_name = "manga"

    has_many :chapters, dependent: :destroy
  end
end
