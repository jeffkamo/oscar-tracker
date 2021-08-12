class JournalEntry < ApplicationRecord
  belongs_to :food

  validates :amount, presence: true
  validates :date, presence: true
  validates :food_id, presence: true

  def total_calories
    self.food.calories * self.amount
  end
end
