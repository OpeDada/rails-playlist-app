class Bookmark < ApplicationRecord
  belongs_to :song
  belongs_to :list

  # validates :song, presence: true
  validates :list, presence: true

  validates :song, presence: true, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 4 }
end
