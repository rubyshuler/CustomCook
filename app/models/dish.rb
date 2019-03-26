class Dish < ApplicationRecord
  has_one :user
  has_one :recipe
  has_one :dish_image
  mount_uploader :dish_image, DishImageUploader
end
