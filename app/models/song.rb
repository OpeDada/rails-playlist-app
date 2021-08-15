class Song < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :artist, presence: true
end
