class RemoveRecipeImagesFromRecipeAttachments < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipe_attachments, :recipe_images, :string
  end
end
