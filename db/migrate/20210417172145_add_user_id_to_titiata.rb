class AddUserIdToTitiata < ActiveRecord::Migration[6.1]
  def change
    add_column :titiata, :user_id, :integer
  end
end
