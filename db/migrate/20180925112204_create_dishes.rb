class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :image
      t.text :review

      t.timestamps
    end
  end
end
