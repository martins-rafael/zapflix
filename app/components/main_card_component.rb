# frozen_string_literal: true

class MainCardComponent < ViewComponent::Base
  def initialize(movie:)
    @movie = movie
  end

end
