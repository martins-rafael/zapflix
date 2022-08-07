# frozen_string_literal: true

class BadgeComponent < ViewComponent::Base
  def initialize(release_date:)
    @release_date = release_date
  end

end
