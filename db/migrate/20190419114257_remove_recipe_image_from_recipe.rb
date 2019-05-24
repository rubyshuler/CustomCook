class RemoveRecipeImageFromRecipe < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :recipe_image, :stringe
  end
end
