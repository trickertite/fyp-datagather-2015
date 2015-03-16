class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :stop_name
      t.decimal :long
      t.decimal :lat

      t.timestamps null: false
    end
  end
end
