class Dish < ApplicationRecord
  has_one :recipe
  mount_uploader :dish_image, DishImageUploader
end
