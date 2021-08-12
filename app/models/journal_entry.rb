class JournalEntry < ApplicationRecord
  belongs_to :food

  def total_calories
    self.food.calories * self.amount
  end
end
