class Step < ApplicationRecord
  mount_uploader :step_image, StepImageUploader
  belongs_to :recipe
end
