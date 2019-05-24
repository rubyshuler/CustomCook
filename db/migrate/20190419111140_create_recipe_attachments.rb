class CreateRecipeAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_attachments do |t|
      t.integer :recipe_id
      t.string :recipe_images

      t.timestamps
    end
  end
end
