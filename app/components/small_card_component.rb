# frozen_string_literal: true

class SmallCardComponent < ViewComponent::Base
  def initialize(movie:)
    @movie = movie
  end

end
