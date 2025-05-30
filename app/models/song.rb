class Song < ApplicationRecord
  belongs_to :album, optional: true

  validates :name, presence: true
  validates :duration_ms, presence: true
end
