class Food < ApplicationRecord
  enum category: { meal: 0, treat: 1}
end
