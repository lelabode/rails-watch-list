class Bookmark < ApplicationRecord
  validates_uniqueness_of :movie_id, scope: [:list_id]
  validates :length { minimum: 6 }, allow_blank: true
  belongs_to :movie
end
