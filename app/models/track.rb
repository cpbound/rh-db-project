class Track < ApplicationRecord
  has_many :associations
  validates :name, presence: true
end
