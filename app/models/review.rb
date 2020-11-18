class Review < ApplicationRecord
  CATEGORIES = (0..5)
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: CATEGORIES }
end
