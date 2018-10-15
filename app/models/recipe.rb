class Recipe < ApplicationRecord
  mount_uploader :recipe_image, RecipeImageUploader
  has_many :recipe_Ingredients
  has_many :steps
  has_many :recipe_images

  accepts_nested_attributes_for :steps
end
