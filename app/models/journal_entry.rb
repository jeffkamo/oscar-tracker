class JournalEntry < ApplicationRecord
  validates :amount, presence: true
  validates :date, presence: true
  validates :food_id, presence: true
  
  belongs_to :food

  def total_calories
    self.food.calories * self.amount
  end
end
