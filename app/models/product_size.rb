class ProductSize < ApplicationRecord
  # アソシエーション
  has_many :category_sizes
  has_many :categories, through: :category_sizes
  has_ancestry  
end

