class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :recipe_ingredients
  has_many :steps
  has_many :recipe_attachments
  accepts_nested_attributes_for :recipe_attachments

  has_many :dishes, dependent: :destroy
  belongs_to :user, optional: true

  accepts_nested_attributes_for :steps, :recipe_ingredients
end
