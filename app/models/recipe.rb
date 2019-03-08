class Recipe < ApplicationRecord
  belongs_to :user
  mount_uploader :recipe_image, RecipeImageUploader

  has_many :recipe_ingredients
  has_many :steps
  has_many :recipe_images
  has_many :dishes, dependent: :destroy
  belongs_to :user, optional: true

  accepts_nested_attributes_for :steps
  accepts_nested_attributes_for :recipe_ingredients

end
