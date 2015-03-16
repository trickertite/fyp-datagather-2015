class AddUserIdToStops < ActiveRecord::Migration
  def change
    add_column :stops, :user_id, :integer
  end
end
