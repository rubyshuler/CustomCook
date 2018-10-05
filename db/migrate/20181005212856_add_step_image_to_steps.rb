class AddStepImageToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :step_image, :string
  end
end
