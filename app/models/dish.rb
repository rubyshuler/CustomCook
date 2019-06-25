class Dish < ApplicationRecord
  belongs_to :user
  has_one :recipe
  has_one :dish_image
  mount_uploader :dish_image, DishImageUploader
end
