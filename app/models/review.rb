class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: { message: "Add your review" }
  validates :rating, numericality: true, inclusion: { in: (0..5), allow_nil: false }
  validates :content, presence: { message: "Choose a rating" }

end
