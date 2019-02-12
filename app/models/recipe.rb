class Recipe < ApplicationRecord
  belongs_to :user
  mount_uploader :recipe_image, RecipeImageUploader

  has_many :recipe_ingredients
  has_many :steps
  has_many :recipe_images

  accepts_nested_attributes_for :steps
  accepts_nested_attributes_for :recipe_ingredients

end
