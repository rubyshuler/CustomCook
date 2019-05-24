class RecipeAttachment < ApplicationRecord
  mount_uploader :recipe_image, RecipeImageUploader
  belongs_to :recipe
end
