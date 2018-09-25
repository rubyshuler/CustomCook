class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :portions
      t.integer :time
      t.integer :difficulty
      t.integer :nutritions
      t.integer :user_id
      t.integer :origin_id

      t.timestamps
    end
  end
end
