class Recipe < ApplicationRecord
  has_many :recipeIngredients
  has_many :steps
  belongs_to :dish
end
