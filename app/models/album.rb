class Album < ApplicationRecord
  validates :title, presence: true
  has_many :tracks, through: :associations
  has_many :associationsd
end
