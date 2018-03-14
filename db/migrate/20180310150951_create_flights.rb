class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :origin_id
      t.integer :destination_id
      t.datetime :arrival_time
      t.datetime :departure_time
      t.timestamps
    end

    add_foreign_key :flights, :airports, :origin_id
    add_foreign_key :flights, :airports, :destination_id 
  end
end
