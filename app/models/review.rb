class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, length: { in: 0..5 }, numericality: { only_integer: true }
end
