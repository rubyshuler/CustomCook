class Step < ApplicationRecord
  has_many :step_images
  belongs_to :recipe
  mount_uploader :step_image, StepImageUploader
end
