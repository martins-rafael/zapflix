class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :movie_genre

  has_and_belongs_to_many :artists

  validates :title, :cover_url, :published_at, :director_id, :movie_genre_id, :synopsis, :artist_ids, presence: true
  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :cover_url, format: { with: /(https?:\/\/.*\.(?:png|jpg))/i, message: "deve começar com https e terminar com .png ou .jpg" }
end
