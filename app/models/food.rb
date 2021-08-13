class Food < ApplicationRecord
  validates :product, presence: true
  validates :brand, presence: true
  validates :category, presence: true
  validates :calories, presence: true

  enum category: { meal: 0, treat: 1}

  has_many :journal_entries
  belongs_to :brand
end
