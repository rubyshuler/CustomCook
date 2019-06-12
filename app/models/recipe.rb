class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true

  has_many :recipe_attachments
  has_many :recipe_ingredients
  has_many :steps
  has_many :dishes, dependent: :destroy

  accepts_nested_attributes_for :steps, :recipe_ingredients, :recipe_attachments
end
