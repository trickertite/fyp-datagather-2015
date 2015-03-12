class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :roll_num
      t.string :bus_num

      t.timestamps null: false
    end
  end
end
