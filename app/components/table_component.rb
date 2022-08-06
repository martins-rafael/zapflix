# frozen_string_literal: true

class TableComponent < ViewComponent::Base
  def initialize(items:)
    @items = items
  end

end
