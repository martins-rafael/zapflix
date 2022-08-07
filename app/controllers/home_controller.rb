class HomeController < ApplicationController
  def index
    @latest_movies = Movie.last(4)
  end
end
