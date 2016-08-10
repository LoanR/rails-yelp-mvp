class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: { message: "Add the name of the restaurant" }
  validates :name, uniqueness: true
  validates :address, presence: { message: "Add an address" }
  validates :address, uniqueness: true
  validates :phone_number, presence: { message: "Add a phone number"}
  validates :phone_number, uniqueness: true
  validates :category, presence: { message: "CChoose a category"}
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }

end
