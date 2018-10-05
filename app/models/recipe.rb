class Recipe < ApplicationRecord
  mount_uploader :recipe_image, RecipeImageUploader
  has_many :recipe_Ingredients
  has_many :steps
end
