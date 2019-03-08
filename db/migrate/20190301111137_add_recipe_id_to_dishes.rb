class AddRecipeIdToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :recipe_id, :integer
  end
end
