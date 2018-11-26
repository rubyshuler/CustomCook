class Recipe < ApplicationRecord
  mount_uploader :recipe_image, RecipeImageUploader
<<<<<<< HEAD
  has_many :recipe_Ingredients, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_many :recipe_images, dependent: :destroy

  accepts_nested_attributes_for :steps

=======
  
  has_many :recipe_ingredients
  has_many :steps
  has_many :recipe_images

  accepts_nested_attributes_for :steps
  accepts_nested_attributes_for :recipe_ingredients
>>>>>>> creating_fork
end
