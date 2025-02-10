module MangaTracker
  class Manga < ApplicationRecord
    has_many :chapters, dependent: :destroy
  end
end
