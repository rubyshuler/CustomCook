class AddDishpImageToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :dish_image, :string
  end
end
