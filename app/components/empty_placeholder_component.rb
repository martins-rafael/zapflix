# frozen_string_literal: true

class EmptyPlaceholderComponent < ViewComponent::Base
  def initialize(text:)
    @text = text
  end

end
