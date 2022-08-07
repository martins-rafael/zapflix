class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :movie_genre

  has_and_belongs_to_many :artists
end
