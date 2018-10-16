class Step < ApplicationRecord
  mount_uploader :step_image, StepImageUploader

  has_many :step_images
  belongs_to :recipe, optional: true
end
