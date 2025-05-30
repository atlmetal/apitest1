class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :total_tracks, presence: true
end
