class Food < ApplicationRecord
  has_many :journal_entries
  belongs_to :brand
  enum category: { meal: 0, treat: 1}
end
