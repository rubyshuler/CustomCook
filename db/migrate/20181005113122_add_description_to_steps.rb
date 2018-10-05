class AddDescriptionToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :description, :text
  end
end
