class RecipeIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe
  # ingredients = RecipeIngredient.all.as_json(only: [:quantity, :measure], include: { ingredient: { only: :name } }).to_json
end
