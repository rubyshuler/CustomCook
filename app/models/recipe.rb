class Recipe < ApplicationRecord
  has_many :RecipeIngredients
  has_many :Steps
end
