class AddUserIdToRutines < ActiveRecord::Migration[5.1]
  def change
    add_column :rutines, :user_id, :integer
  end
end
