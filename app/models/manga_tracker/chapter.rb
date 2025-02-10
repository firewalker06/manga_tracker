module MangaTracker
  class Chapter < ApplicationRecord
    belongs_to :manga
  end
end
