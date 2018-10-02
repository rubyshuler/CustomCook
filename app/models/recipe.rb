class Recipe < ApplicationRecord
  has_many :recipe_Ingredients
  has_many :steps
  belongs_to :dish
end
