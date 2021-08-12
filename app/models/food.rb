class Food < ApplicationRecord
  has_many :journal_entries
  enum category: { meal: 0, treat: 1}
end
