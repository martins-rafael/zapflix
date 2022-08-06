# frozen_string_literal: true

class ModalComponent < ViewComponent::Base
  def initialize(item:)
    @item = item
  end
end
