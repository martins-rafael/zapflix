class Director < ApplicationRecord
  has_many :movies

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
