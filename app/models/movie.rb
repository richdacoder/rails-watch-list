class Movie < ApplicationRecord
  validates :overview, presence: true
  validates :title, uniqueness: true, presence: true
  has_many :bookmarks
end
