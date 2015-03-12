class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.decimal :long
      t.decimal :lat
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :locations, :users
  end
end
