class Step < ApplicationRecord
  mount_uploader :step_image, StepImageUploader

  has_many :step_images
  belongs_to :recipe, optional: true
  validates :recipe, presence: true

  after_create: step_count
end
