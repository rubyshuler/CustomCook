class AddRecipeImageToRecipeAttachments < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_attachments, :recipe_image, :string
  end
end
