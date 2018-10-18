class Recipe < ApplicationRecord
  mount_uploader :recipe_image, RecipeImageUploader
  has_many :recipe_Ingredients, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_many :recipe_images, dependent: :destroy

  accepts_nested_attributes_for :steps

end
