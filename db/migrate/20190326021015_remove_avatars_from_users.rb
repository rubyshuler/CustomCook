class RemoveAvatarsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :avatars, :json
  end
end
